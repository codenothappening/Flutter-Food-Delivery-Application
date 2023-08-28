import 'package:flutter/material.dart';
import 'package:food_delivery_application/data/repository/popular_product_repo.dart';
import 'package:food_delivery_application/models/products_model.dart';
import 'package:food_delivery_application/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  int _quantity = 0;
  int get quantity => _quantity;
  bool get isLoaded => _isLoaded;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      //print("got Products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      //print(_popularProductList);
      _isLoaded = true;
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
      print("increment" + _quantity.toString());
    } else {
      _quantity = checkQuantity(_quantity - 1);
      print("decrement" + _quantity.toString());
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar("Item count", "You can't reduce more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.black87);
      return 0;
    } else if (quantity > 20) {
      Get.snackbar("Item count", "You can't add more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.black87);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct() {
    _quantity = 0;
    _inCartItems = 0;
    // if exist
    // get from Storage _inCartItems = 3
  }
}

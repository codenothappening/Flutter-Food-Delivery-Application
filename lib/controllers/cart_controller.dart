import 'package:food_delivery_application/data/repository/cart_repo.dart';
import 'package:food_delivery_application/models/cart_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};
}

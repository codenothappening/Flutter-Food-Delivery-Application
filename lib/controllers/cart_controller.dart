import 'package:food_delivery_application/data/repository/cart_repo.dart';
import 'package:food_delivery_application/models/cart_model.dart';
import 'package:food_delivery_application/models/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    // print("Length of the item is " + _items.length.toString());
    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {
        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          img: value.img,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
    } else {
      _items.putIfAbsent(product.id!, () {
        // print("Adding item to the cart with id " +
        //     product.id!.toString() +
        //     " quantity " +
        //     quantity.toString());
        // _items.forEach((key, value) {
        //   print("quantity is " + value.quantity.toString());
        // });

        return CartModel(
          id: product.id,
          name: product.name,
          price: product.price,
          img: product.img,
          quantity: quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
    }
  }
}

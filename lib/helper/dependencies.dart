import 'package:flutter/material.dart';
import 'package:food_delivery_application/controllers/cart_controller.dart';
import 'package:food_delivery_application/controllers/popular_product_controller.dart';
import 'package:food_delivery_application/controllers/recommended_product_controller.dart';
import 'package:food_delivery_application/data/api/api_client.dart';
import 'package:food_delivery_application/data/repository/cart_repo.dart';
import 'package:food_delivery_application/data/repository/popular_product_repo.dart';
import 'package:food_delivery_application/data/repository/recommended_product_repo.dart';
import 'package:food_delivery_application/utils/app_contants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppContants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}

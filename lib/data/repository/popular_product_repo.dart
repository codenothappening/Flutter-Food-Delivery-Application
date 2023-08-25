import 'package:food_delivery_application/data/api/api_client.dart';
import 'package:food_delivery_application/utils/app_contants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppContants.POPULAR_PRODUCT_URI);
  }
}

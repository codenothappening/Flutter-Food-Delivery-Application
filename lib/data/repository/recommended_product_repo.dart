import 'package:food_delivery_application/data/api/api_client.dart';
import 'package:food_delivery_application/utils/app_contants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppContants.RECOMMENDED_PRODUCT_URI);
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:foodo/utils/app_constant.dart';
import 'package:get/get.dart';
import 'package:foodo/data/api/api_client.dart';

// if application sends or get data from server class should extends getxService
class PopulerProductRepo extends GetxService {
  final ApiClient apiClient;
  PopulerProductRepo({
    required this.apiClient,
  });

  Future<Response> getPopulerProductList() async {
    return await apiClient.getData(AppConstant.POPULER_PRODUCT_URI);
  }
}

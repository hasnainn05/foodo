import 'package:foodo/controllers/populer_product_controller.dart';
import 'package:foodo/data/repositries/populer_product_repo.dart';
import 'package:foodo/utils/app_constant.dart';

import '../data/api/api_client.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstant.BASE_URL));

  Get.lazyPut(() => PopulerProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopulerProductController(populerProductRepo: Get.find()));
}

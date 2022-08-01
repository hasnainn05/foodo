// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:foodo/data/repositries/populer_product_repo.dart';
import 'package:foodo/models/products_model.dart';
import 'package:get/get.dart';
//

class PopulerProductController extends GetxController {
  final PopulerProductRepo populerProductRepo;
  PopulerProductController({required this.populerProductRepo});
  List<dynamic> _populerProductList = [];
  List<dynamic> get populerProductList => _populerProductList;
  Future<void> getPopulerProductList() async {
    Response response = await populerProductRepo.getPopulerProductList();
    if (response.statusCode == 200) {
      print("Got Products");
      _populerProductList = [];
      _populerProductList.addAll(Product.fromJson(response.body).products);
      update();
    } else {}
  }
}

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:foodo/data/repositries/populer_product_repo.dart';
// import 'package:foodo/models/products_model.dart';
// import 'package:get/get.dart';

// class RecommendedProductController extends GetxController {
//   final RecommendedProductRepo recommendedProductRepo;
//   RecommendedProductController({required this.recommendedProductRepo});
//   List<ProductModel> _populerProductList = [];
//   List<ProductModel> get recommendedProductList => _recommendedProductList;

//   Future<void> getRecommendedProductList() async {
//     Response response =
//         await recommendedProductRepo.getRecommendedProductList();
//     if (response.statusCode == 200) {
//       print("Got Products");
//       _recommendedProductList = [];
//       _recommendedProductList.addAll(Product.fromJson(response.body).products);
//       update();
//     } else {}
//   }
// }

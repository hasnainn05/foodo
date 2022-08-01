import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:foodo/Widgets/app_column.dart';
import 'package:foodo/Widgets/icon_text__widget.dart';
import 'package:foodo/controllers/populer_product_controller.dart';
import 'package:foodo/utils/app_constant.dart';
import 'package:get/get.dart';
//import 'package:dots_indicator/src/dots_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPageValue = 0.0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<PopulerProductController>(builder: (populerProducts) {
          return Container(
            height: 310,
            child: PageView.builder(
                controller: pageController,
                itemCount: populerProducts.populerProductList.length,
                itemBuilder: (context, position) {
                  return _buildPageItem(
                      position, populerProducts.populerProductList[position]);
                }),
          );
        }),
        GetBuilder<PopulerProductController>(builder: (populerproducts) {
          return DotsIndicator(
            dotsCount: populerproducts.populerProductList.isEmpty
                ? 1
                : populerproducts.populerProductList.length,
            position: _currentPageValue,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          );
        }),
        Container(
          padding: EdgeInsets.only(bottom: 6),
          margin: EdgeInsets.only(
            left: 20,
          ),
          child: Row(
            children: [
              Text(
                'Populer',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 154, 214, 199),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              )
            ],
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: ((context, index) {
              return Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6, bottom: 6, left: 10),
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                              image: NetworkImage(
                                  'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Ice-Cream-Scoops-With-Chocolate-Syrup-500x375.png')),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 6),
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(43, 169, 170, 170)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Corneto Ice Cream',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: 'Normal',
                                        iconColor: Colors.pinkAccent),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    IconTextWidget(
                                        icon: Icons.location_on,
                                        text: '0.7km',
                                        iconColor:
                                            Color.fromARGB(255, 92, 206, 196)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    IconTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: '25 minutes',
                                        iconColor:
                                            Color.fromARGB(255, 117, 111, 113)),
                                  ],
                                ),
                              ],
                            )
                          ]),
                    ))
                  ],
                ),
              );
            }))
      ],
    );
  }

  Widget _buildPageItem(
    int index,
    populerProduct,
    //ProductModel populerProduct
  ) {
    return Stack(
      children: [
        Container(
          height: 230,
          margin: EdgeInsets.only(right: 15, left: 15, top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? Color.fromARGB(221, 65, 63, 63)
                  : Color.fromARGB(247, 69, 122, 153),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(AppConstant.BASE_URL +
                      "/uploads/" +
                      populerProduct.img))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(235, 235, 232, 232),
            ),
            child: Container(
                padding: EdgeInsets.only(top: 10, right: 5, left: 5),
                child: AppColumn(
                  text: 'Chinese',
                )),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodo/Widgets/big_text.dart';
import 'package:foodo/Widgets/small_text.dart';
import 'package:foodo/pages/home/food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //showing the header
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Pakistan",
                      color: Color.fromARGB(255, 154, 214, 199),
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Multan",
                          color: Color.fromARGB(255, 189, 189, 189),
                          size: 12,
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 154, 214, 199),
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              ],
            ),
          ),
        ),
        //showing the body
        Expanded(child: SingleChildScrollView(child: FoodPageBody())),
      ],
    ));
  }
}

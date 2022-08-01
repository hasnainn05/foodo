import 'package:flutter/material.dart';
import 'package:foodo/Widgets/app_column.dart';
import 'package:foodo/Widgets/expandable_text_widget.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.food52.com/7f0yncraWeYUJG_lLbH2ie1xd6g=/2016x1344/d815e816-4664-472e-990b-d880be41499f--chicken-biryani-recipe.jpg'))),
                )),
            Positioned(
                left: 20,
                right: 20,
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(125, 187, 184, 184),
                        radius: 18,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 87, 84, 84),
                          size: 15,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(125, 187, 184, 184),
                        radius: 18,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Color.fromARGB(255, 87, 84, 84),
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                left: 0,
                right: 0,
                top: 380,
                bottom: 0,
                child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppColumn(
                          text: 'Naseeb Biryani',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: ExpandabaleTextWidget(
                                text:
                                    'Biryani is a mixed rice dish originating among the royal khansamas of the durbar of Old Delhi, under the Mughal Empire, during the late 16th century of the then Mughal Court.Biryani is a mixed rice dish originating among the royal khansamas of the durbar of Old Delhi, under the Mughal Empire, during the late 16th century of the then Mughal CourtBiryani is a mixed rice dish originating among the royal khansamas of the durbar of Old Delhi, under the Mughal Empire, during the late 16th century of the then Mughal CourtBiryani is a mixed rice dish originating among the royal khansamas of the durbar of Old Delhi, under the Mughal Empire, during the late 16th century of the then Mughal CourtBiryani is a mixed rice dish originating among the royal khansamas of the durbar of Old Delhi, under the Mughal Empire, during the late 16th century of the then Mughal Court'),
                          ),
                        )
                      ],
                    )))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: 90,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 248, 247),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "\$10 | Add to cart",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 112, 224, 187)),
            )
          ],
        ),
      ),
    );
  }
}

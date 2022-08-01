import 'package:flutter/material.dart';

import 'icon_text__widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Naseeb Biryani',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 76, 122, 108)),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.blue,
                      )),
            ),
            SizedBox(
              width: 5,
            ),
            Text('4.5'),
            SizedBox(
              width: 15,
            ),
            Text('223'),
            SizedBox(
              width: 5,
            ),
            Text('Comments')
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
                iconColor: Color.fromARGB(255, 92, 206, 196)),
            SizedBox(
              width: 5,
            ),
            IconTextWidget(
                icon: Icons.access_time_rounded,
                text: '25 minutes',
                iconColor: Color.fromARGB(255, 117, 111, 113)),
          ],
        )
      ],
    );
  }
}

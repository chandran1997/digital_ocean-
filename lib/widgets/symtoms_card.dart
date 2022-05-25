import 'package:flutter/material.dart';

import '../colors.dart';

class symptoms_card extends StatelessWidget {
  String image;
  String title;
  bool isActive;
  symptoms_card({
    Key? key,
    required this.image,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            isActive
                ? BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: kActiveShadowColor)
                : BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 6,
                    color: kActiveShadowColor)
          ],
        ),
        child: Column(
          children: [
            Image.asset(image),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matcher/matcher.dart';

import '../colors.dart';

class prevention extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  prevention({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset:  Offset(0, 4), blurRadius: 30, color: kShadowColor)
          ],
        ),
        child: Stack(
          children: [
            Image.asset(image),
            Padding(
              padding: EdgeInsets.only(left: 140, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Text(
                    subtitle,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset('assets/icons/forward.svg')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

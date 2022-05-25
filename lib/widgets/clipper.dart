import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matcher/matcher.dart';

import '../infoscreen.dart';
import 'cases.dart';

class clippath_design extends StatelessWidget {
  String textTop;
  String textBottom;
  String image;

  clippath_design({
    Key? key,
    required this.textTop,
    required this.textBottom,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: myclipper(),
      child: Stack(
        children: [
          Container(
            height: 320,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [Color(0xFF233C7D), Color(0xFF7487B8)],
              ),
            ),
            child: Image.asset('assets/images/virus.png'),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: GestureDetector(
              child: SvgPicture.asset('assets/icons/menu.svg'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => info_Screen()));
              },
            ),
          ),
          Positioned(
            top: 40,
            left: 80,
            width: 140,
            child: SvgPicture.asset(image),
          ),
          Positioned(
            top: 110,
            right: 60,
            child: Text(
              '$textTop\n $textBottom',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

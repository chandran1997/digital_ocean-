import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';



class caseupdate extends StatelessWidget {
  String number;
  String cases;
  Color color;
  Color color2;
  caseupdate({
    Key? key,
    required this.number,
    required this.cases,
    required this.color,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            height: 30,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: color2)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              number,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              cases,
              style: TextStyle(letterSpacing: 1),
            ),
          ),
        ],
      ),
    );
  }
}



class myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(width / 2, height, width, height - 80);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
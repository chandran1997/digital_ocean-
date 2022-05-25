import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_application_1/colors.dart';

import 'widgets/cases.dart';
import 'widgets/clipper.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String dropdownbview = 'Chennai';

  var dropdownlist = ['Chennai', 'Kanchpuram', 'Madurai', 'Salem'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            clippath_design(
              image: 'assets/icons/Drcorona.svg',
              textTop: 'All You Need',
              textBottom: 'Is Stay At Home',
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: kShadowColor, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: DropdownButton(
                        isExpanded: true,
                        underline: SizedBox(),
                        icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                        items: dropdownlist.map((String dropdownlist) {
                          return DropdownMenuItem(
                            child: Text(dropdownlist),
                            value: dropdownlist,
                          );
                        }).toList(),
                        value: dropdownbview,
                        onChanged: (String? values) {
                          setState(() {
                            dropdownbview = values!;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Case Update',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Newest Update March 28',
                        style: TextStyle(letterSpacing: 1),
                      )
                    ],
                  ),
                  Text(
                    'See Details',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          color: kShadowColor),
                    ],
                  ),
                  child: Row(
                    children: [
                      caseupdate(
                        color: kInfectedColor.withOpacity(.4),
                        color2: kInfectedColor,
                        number: '102687',
                        cases: 'Infected',
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      caseupdate(
                        color: kDeathColor.withOpacity(.4),
                        color2: kDeathColor,
                        number: '9876',
                        cases: 'Deaths',
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      caseupdate(
                        color: kRecovercolor.withOpacity(.4),
                        color2: kRecovercolor,
                        number: '30000',
                        cases: 'Recovered',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Spread Of Virus',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'See Details',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 30,
                        color: kShadowColor)
                  ],
                ),
                child: Image.asset('assets/images/map.png'),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}


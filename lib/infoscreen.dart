import 'package:flutter/material.dart';

import 'package:flutter_application_1/colors.dart';

import 'widgets/clipper.dart';
import 'widgets/prevention.dart';
import 'widgets/symtoms_card.dart';

class info_Screen extends StatefulWidget {
  const info_Screen({Key? key}) : super(key: key);

  @override
  State<info_Screen> createState() => _info_ScreenState();
}

class _info_ScreenState extends State<info_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            clippath_design(
              image: 'assets/icons/coronadr.svg',
              textTop: 'Get To Know',
              textBottom: 'About Covid-19',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Symptoms',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  symptoms_card(
                    image: 'assets/images/headache.png',
                    title: 'Headache',
                    isActive: true,
                  ),
                  symptoms_card(
                    image: 'assets/images/caugh.png',
                    title: 'Caugh',
                  ),
                  symptoms_card(
                    image: 'assets/images/fever.png',
                    title: 'Fever',
                  ),
                  symptoms_card(
                    image: 'assets/images/headache.png',
                    title: 'Headache',
                  ),
                  symptoms_card(
                    image: 'assets/images/caugh.png',
                    title: 'Caugh',
                  ),
                  symptoms_card(
                    image: 'assets/images/fever.png',
                    title: 'Fever',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Prevention',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  prevention(
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear Face Mask',
                    subtitle:
                        'Clean your hands before you put your mask on, as well as before and after you take it off',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  prevention(
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash Your Hands',
                    subtitle:
                        'Lather your hands by rubbing them together with the soap. Lather the backs of your hands',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

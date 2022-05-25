import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpacesPage extends StatefulWidget {
  const SpacesPage({Key? key}) : super(key: key);

  @override
  State<SpacesPage> createState() => _SpacesPageState();
}

class _SpacesPageState extends State<SpacesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff292e42),
        actions: const [
          Icon(Icons.logout),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "Spaces",
              style: TextStyle(
                color: Color(0xff292e42),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: double.maxFinite,
            height: 200,
            decoration: const BoxDecoration(
                // color: Colors.red,
                ),
            child: SvgPicture.asset("assets/digital/spaces.svg"),
          ),
          const SizedBox(height: 20),
          const Text(
            "Support Database Engines",
            style: TextStyle(
              color: Color(0xff292e42),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

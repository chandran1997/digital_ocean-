
import 'package:flutter/material.dart';

class Text_field extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const Text_field({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 2),
              color: Colors.grey.withOpacity(0.4),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(
              icon,
              color: const Color(0xff292e42),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.white,
              ),
            ),

            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )),
            //border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
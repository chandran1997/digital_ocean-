import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/auth1/login.dart';
import 'package:flutter_application_1/auth/auth1/register.dart';
import 'package:flutter_application_1/auth/auth1/text_fiels_widgets.dart';

import 'package:flutter_application_1/widgets/clipper.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPasswordPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color: Color(0xff292e42),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Reset Password",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Container(
                        width: 45,
                        height: 6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffffffff)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 130),
            const SizedBox(height: 20),
            Text_field(
              controller: controller,
              icon: Icons.mail,
              hintText: "Email",
            ),
            const SizedBox(height: 15),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Remember your password !  ",
                  style: TextStyle(
                    color: Color(0xff292e42),
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                        (route) => false);
                  },
                  child: const Text("Login",
                      style: TextStyle(
                        color: Color(0xff292e42),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/auth1/register.dart';
import 'package:flutter_application_1/auth/auth1/text_fiels_widgets.dart';

import 'package:flutter_application_1/widgets/clipper.dart';

import 'reset_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                padding: const EdgeInsets.only(top: 95, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Use your profile info to get LogIn",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 15,
                      ),
                    ),
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
            Text_field(
              controller: controller,
              icon: Icons.email,
              hintText: "Email",
            ),
            const SizedBox(height: 20),
            Text_field(
              controller: controller,
              icon: Icons.lock,
              hintText: "Password",
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ResetPasswordPage()));
                    },
                    child: const Text(
                      "Forget password",
                      style: TextStyle(color: Color(0xff292e42)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 110,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color(0xff292e42),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/icons/auth1_facebook.png"),
                  )),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/icons/auth1_google.png"),
                  )),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don\'t have an account ?  ",
                  style: TextStyle(
                    color: Color(0xff292e42),
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text("Register",
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

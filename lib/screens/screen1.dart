import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'CONCEPTZILLA',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://assets-global.website-files.com/5bcb5ee81fb2091a2ec550c7/613e3aabd52866225658f6c0_DrawKit-Digital-Marketing-Illustrations-Display2.png'),
                  ),
                ),
              ),
              const Text(
                'THE DESIGN',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'The Concept will be constructed within the next day or two. It required you to stay in touch with conceptzilla during that time'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children:  [
                const  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child:  Text(
                      'Skip',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
              const    Spacer(),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff1f2d49),
                    ),
                  ),
                 const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff1f2d49),
                    ),
                  ),
                const   SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff1f2d49),
                    ),
                  ),
                 const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff1c85e8)),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfffebb94),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff1f2d49),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffe9f1ff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

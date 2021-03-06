import 'package:flutter/material.dart';

import 'auth/auth1/cloud_security.dart';
import 'auth/auth1/database.dart';
import 'auth/auth1/droplet.dart';
import 'auth/auth1/spaces.dart';
import 'auth/auth1/volumn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CloudSecurityPage(),
    );
  }
}

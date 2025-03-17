import 'package:dempro/blood_donation/add_userpage.dart';
import 'package:dempro/blood_donation/blood_homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: BloodHomePage(),
      // home: AddUserPage(),
    );
  }
}

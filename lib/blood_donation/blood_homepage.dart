import 'package:dempro/blood_donation/add_userpage.dart';
import 'package:flutter/material.dart';

class BloodHomePage extends StatefulWidget {
  const BloodHomePage({super.key});

  @override
  State<BloodHomePage> createState() => _BloodHomePageState();
}

class _BloodHomePageState extends State<BloodHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blood HomePage"),
        backgroundColor: const Color.fromARGB(255, 167, 198, 213),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddUserPage(),
              ));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        foregroundColor: Colors.blue,
        backgroundColor: const Color.fromARGB(255, 167, 198, 213),
        tooltip: 'Add Groups',
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:dempro/homepage.dart';
import 'package:flutter/material.dart';

class Containerr extends StatefulWidget {
  const Containerr({super.key});

  @override
  State<Containerr> createState() => _ContainerrState();
}

class _ContainerrState extends State<Containerr> {
  @override
  void initState() {
    gotoMain();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.pink,),
      body: Center(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.amber,
              border: Border.all(color: Colors.green, width: 5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(10, 10), blurRadius: 10)
              ]),
          child: const Text(
            "Flex",
            style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                
                fontStyle: FontStyle.italic,
                letterSpacing: 5,
                shadows: [
                  Shadow(
                      color: Colors.black, blurRadius: 5, offset: Offset(3, 2))
                ]), 
          ),
        ),
      )),
    );
  }

  Future<void> gotoMain() async {
    await Future.delayed(const Duration(seconds: 5));

    Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
  }
}

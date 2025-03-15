import 'package:flutter/material.dart';

class CircleAva extends StatefulWidget {
  const CircleAva({super.key});

  @override
  State<CircleAva> createState() => _CircleAvaState();
}

class _CircleAvaState extends State<CircleAva> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.red,
                  child: Text(
                    "Pic",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              // SizedBox(height: 20,),
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 50,
                child: Icon(
                  Icons.abc,
                  size: 40,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage("images/Bus.jpg"),
                  radius: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

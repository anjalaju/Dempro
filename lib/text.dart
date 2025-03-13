import 'package:flutter/material.dart';

class TextText extends StatefulWidget {
  const TextText({super.key});

  @override
  State<TextText> createState() => _TextTextState();
}

class _TextTextState extends State<TextText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        title: const Text("flex"),
        // centerTitle: true,
        backgroundColor: Colors.green,
        // leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        // elevation: 4,shadowColor: Colors.black.withOpacity(0.5),
      ),
      body: const Center(
          child: Text(
        "Flex",
        style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 5,
            // backgroundColor: Colors.amber,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(3, 2), blurRadius: 10)
            ]),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class ClickPage extends StatefulWidget {
  const ClickPage({super.key});

  @override
  State<ClickPage> createState() => _ClickPageState();
}

class _ClickPageState extends State<ClickPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 198, 213),
        title: const Center(
            child: Text(
          "Aspire Lite",
          style: TextStyle(fontStyle: FontStyle.italic),
        )),
        // centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        // elevation: 4,shadowColor: Colors.black.withOpacity(0.5),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "click page",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber),
                  foregroundColor: WidgetStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Clickbutton"))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class SubmitPage extends StatefulWidget {
  const SubmitPage({super.key});

  @override
  State<SubmitPage> createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
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
            "submit page ",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber),
                  foregroundColor: WidgetStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Sumitbutton")),
        ],
      )),
    );
  }
}

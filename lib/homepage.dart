import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      drawer: const Drawer(
      backgroundColor: Colors.pink,
    ),
      appBar: AppBar(
        title: const Text("flex"),
        // centerTitle: true,
        backgroundColor: Colors.pink,
        // leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
            // elevation: 4,shadowColor: Colors.black.withOpacity(0.5),
      ),
    );
  }
}

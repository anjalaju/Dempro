import 'package:flutter/material.dart';

class RowCol extends StatefulWidget {
  const RowCol({super.key});

  @override
  State<RowCol> createState() => _RowColState();
}

class _RowColState extends State<RowCol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.pink,
      ),
      appBar: AppBar(
        title: const Text("flex"),
        // centerTitle: true,
        backgroundColor: Colors.blue,
        // leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        // elevation: 4,shadowColor: Colors.black.withOpacity(0.5),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}

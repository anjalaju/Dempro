import 'package:dempro/navipages/clickpage.dart';
import 'package:dempro/navipages/submitpage.dart';
import 'package:flutter/material.dart';

class NaviPage extends StatefulWidget {
  const NaviPage({super.key});

  @override
  State<NaviPage> createState() => _NaviPageState();
}

class _NaviPageState extends State<NaviPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.pink,
      ),
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
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ClickPage(),));
                },
                child: const Text(
                  "Click",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SubmitPage(),));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}

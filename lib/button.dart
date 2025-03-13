import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              // ignore: sort_child_properties_last
              child: const Text(
                "Texted",
              ),
              style: ButtonStyle(
                  textStyle:
                      WidgetStateProperty.all(const TextStyle(fontSize: 30)),
                  foregroundColor: WidgetStateProperty.all(Colors.amber)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.home),
              label: const Text("hello"),
              style: ButtonStyle(
                  textStyle:
                      WidgetStateProperty.all(const TextStyle(fontSize: 30)),
                  foregroundColor: WidgetStateProperty.all(Colors.red)),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    // padding: WidgetStateProperty.all(EdgeInsets.only(
                    //   bottom: 10,
                    //   left: 10,
                    //   right: 10,
                    //   top: 10,
                    // )),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    minimumSize: WidgetStateProperty.all(const Size(280, 50)),
                    textStyle:
                        WidgetStateProperty.all(const TextStyle(fontSize: 20)),
                    foregroundColor: WidgetStateProperty.all(
                      Colors.white,
                    ),
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 242, 3, 107))),
                onPressed: () {
                  // log("clicked");
                },
                // onLongPress: () {},
                child: const Text("Submit")),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton(
                style: ButtonStyle(
                    side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.yellow, width: 2)),
                    foregroundColor: WidgetStateProperty.all(Colors.red),
                    // backgroundColor: WidgetStateProperty.all(Colors.green),
                    minimumSize: WidgetStateProperty.all(const Size(280, 50)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    textStyle: WidgetStateProperty.all(
                      const TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    )),
                onPressed: () {},
                child: const Text("SignUp"))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Stprog extends StatefulWidget {
  const Stprog({super.key});

  @override
  State<Stprog> createState() => _StprogState();
}

class _StprogState extends State<Stprog> {
  var displaytxt = "How are you";
  var likeclr = Colors.black;
  var dislikeclr = Colors.black;

  void changetxt() {
    setState(() {
      displaytxt = "Ajumon";
    });
  }

  void changetxtsecond() {
    setState(() {
      displaytxt = "Razi";
    });
  }

  void changelikeclr() {
    setState(() {
      if (likeclr == Colors.black) {
        likeclr = Colors.blue;
      } else {
        likeclr = Colors.black;
      }
    });
  }

  void changedislikeclr() {
    setState(() {
      if (dislikeclr == Colors.black) {
        dislikeclr = Colors.red;
      } else {
        dislikeclr = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displaytxt,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    minimumSize: WidgetStateProperty.all(const Size(280, 50)),
                    textStyle:
                        WidgetStateProperty.all(const TextStyle(fontSize: 20)),
                    backgroundColor: WidgetStateProperty.all(Colors.pink),
                    foregroundColor: WidgetStateProperty.all(Colors.white)),
                onPressed: () {
                  changetxt();
                },
                child: const Text("Anjal ")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    minimumSize: WidgetStateProperty.all(const Size(280, 50)),
                    textStyle:
                        WidgetStateProperty.all(const TextStyle(fontSize: 20)),
                    backgroundColor: WidgetStateProperty.all(Colors.pink),
                    foregroundColor: WidgetStateProperty.all(Colors.white)),
                onPressed: () {
                  changetxtsecond();
                },
                child: const Text("Edin ")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    changelikeclr();
                  },
                  icon: const Icon(Icons.thumb_up),
                  iconSize: 40,
                  color: likeclr,
                ),
                IconButton(
                  onPressed: () {
                    changedislikeclr();
                  },
                  icon: const Icon(Icons.thumb_down),
                  color: dislikeclr,
                  iconSize: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

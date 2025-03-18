import 'package:flutter/material.dart';

class Exertwo extends StatefulWidget {
  const Exertwo({super.key});

  @override
  State<Exertwo> createState() => _ExertwoState();
}

class _ExertwoState extends State<Exertwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Anjal"),
                    subtitle: Text("23 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/Bus.jpg"),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    title: Text("Bus is good  bus is good"),
                  ),
                  SizedBox(
                    height: 200,
                    width: 350,
                    // color: Colors.amber,
                    child: Image.asset(
                      'images/Flower.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_down),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Anjal"),
                    subtitle: Text("23 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/Bus.jpg"),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    title: Text("Bus is good  bus is good"),
                  ),
                  SizedBox(
                    height: 200,
                    width: 350,
                    // color: Colors.amber,
                    child: Image.asset(
                      'images/Flower.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_down),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Anjal"),
                    subtitle: Text("23 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/Bus.jpg"),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    title: Text("Bus is good  bus is good"),
                  ),
                  SizedBox(
                    height: 200,
                    width: 350,
                    // color: Colors.amber,
                    child: Image.asset(
                      'images/Flower.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_down),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

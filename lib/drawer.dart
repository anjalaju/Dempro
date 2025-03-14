import 'package:flutter/material.dart';

class DrawerExp extends StatefulWidget {
  const DrawerExp({super.key});

  @override
  State<DrawerExp> createState() => _DrawerExpState();
}

class _DrawerExpState extends State<DrawerExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Center(child: Text("flex")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/Flower.jpeg'),
                  // backgroundColor: Colors.amber,
                ),
                accountName: Text("Anjal"),
                accountEmail: Text("anjal@gmail.com")),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Settings"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Dashboard"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("signout"),
              onTap: () {},
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

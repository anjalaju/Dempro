import 'package:flutter/material.dart';

class Tabb extends StatefulWidget {
  const Tabb({super.key});

  @override
  State<Tabb> createState() => _TabbState();
}

class _TabbState extends State<Tabb> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Unread",
              ),
              Tab(
                text: "Favourites",
              ),
              Tab(
                text: "Groups",
              ),
            ],
            indicatorColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.label,
            // isScrollable: true,
          ),
          backgroundColor: const Color.fromARGB(255, 221, 214, 148),
          title: const Center(child: Text("WhatsApp")),
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
                onTap: () {

                },
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
        body: const TabBarView(children: [
          Center(child: Text("All")),
          Center(child: Text("Unread")),
          Center(child: Text("Favourites")),
          Center(child: Text("Groups")),
        ]),
      ),
    );
  }
}

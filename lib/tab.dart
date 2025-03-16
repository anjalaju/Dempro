import 'package:flutter/material.dart';

class Tabb extends StatefulWidget {
  const Tabb({super.key});

  @override
  State<Tabb> createState() => _TabbState();
}

class _TabbState extends State<Tabb> {
  int indexnum = 0;
  List tablewidge = [
    const Center(child: Text("Home")),
    const Center(child: Text("Search")),
    const Center(child: Text("Settings")),
    const Center(child: Text("Profille")),
  ];
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
          backgroundColor: const Color.fromARGB(255, 167, 198, 213),
          title: const Center(
              child: Text(
            "Aspire Lite",
            style: TextStyle(fontStyle: FontStyle.italic),
          )),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  // color: Colors.amber,
                ),
                label: 'Profile',
                backgroundColor: Colors.blue),
          ],
          currentIndex: indexnum,
          onTap: (int index) {
            setState(() {
              indexnum = index;
            });
          },
          showUnselectedLabels: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: Colors.blue,
          backgroundColor: const Color.fromARGB(255, 167, 198, 213),
          // mini: true,
          tooltip: 'Add Groups',
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 167, 198, 213),
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
        body: TabBarView(children: [
          const Center(child: Text("All")),
          const Center(child: Text("Unread")),
          const Center(child: Text("Favourites")),
          const Center(child: Text("Groups")),
          tablewidge.elementAt(indexnum)
        ]),
      ),
    );
  }
}

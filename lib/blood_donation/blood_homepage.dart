import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dempro/blood_donation/add_userpage.dart';
import 'package:dempro/blood_donation/update.dart';
import 'package:flutter/material.dart';

class BloodHomePage extends StatefulWidget {
  const BloodHomePage({super.key});

  @override
  State<BloodHomePage> createState() => _BloodHomePageState();
}

class _BloodHomePageState extends State<BloodHomePage> {
  final CollectionReference donar =
      FirebaseFirestore.instance.collection('donar');
      void delete(docId){
donar.doc(docId).delete(); 
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blood HomePage"),
        backgroundColor: const Color.fromARGB(255, 167, 198, 213),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddUserPage(),
              ));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        foregroundColor: Colors.blue,
        backgroundColor: const Color.fromARGB(255, 167, 198, 213),
        tooltip: 'Add Groups',
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: donar.orderBy('name').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot donarsnap = snapshot.data!.docs[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 223, 209, 209),
                              blurRadius: 10,
                              spreadRadius: 15)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 30,
                            child: Text(
                              donarsnap['group'],
                              style: const TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              donarsnap['name'],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              donarsnap['phone'].toString(),
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                // print(donarsnap.id);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UpdateUserPage(
                                          name: donarsnap['name'],
                                          phone: donarsnap['phone'].toString(),
                                          group: donarsnap['group'],
                                          id: donarsnap.id),
                                    ));
                              },
                              icon: const Icon(Icons.edit),
                              iconSize: 20,
                              color: Colors.blue,
                            ),
                            IconButton(
                              onPressed: () {
                                delete(donarsnap.id);
                              },
                              icon: const Icon(Icons.delete),
                              iconSize: 20,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}

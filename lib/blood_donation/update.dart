import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateUserPage extends StatefulWidget {
  String name;
  String phone;
  String group;
  String id;
  UpdateUserPage(
      {super.key,
      required this.name,
      required this.phone,
      required this.group,
      required this.id});

  @override
  State<UpdateUserPage> createState() => _UpdateUserPageState();
}

class _UpdateUserPageState extends State<UpdateUserPage> {
Future<void> update() async {
  await donar.doc(widget.id).update({
    'name': donarName.text, // Get updated value
    'phone': donarnumber.text, // Get updated value
    'group': selectedgroups, // Get updated value
  }).then((value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("User Updated Successfully!"))
    );
    Navigator.pop(context); // Go back after update
  }).catchError((error) {
    print("Failed to update user: $error");
  });
}

  @override
  void initState() {
    print('${widget.name}');
    donarName = TextEditingController(text: widget.name);
    donarnumber = TextEditingController(text: widget.phone);
    selectedgroups = widget.group; // Initialize selected blood group
    print('${widget.group}');
    // print('${widget.id}');
 

    // TODO: implement initState
    super.initState();
  }
  // final bloodGroups = ['A+', 'A-', 'B+', 'B-'];
  // String? selectedgroups;

  final bloodGroups = {'A+', 'A-', 'B+', 'B-'};
  String? selectedgroups;
  final CollectionReference donar =
      FirebaseFirestore.instance.collection('donar');
  // TextEditingController donarName = TextEditingController();
  // TextEditingController donarnumber = TextEditingController();
   late TextEditingController donarName;
  late TextEditingController donarnumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Page"),
        backgroundColor: const Color.fromARGB(255, 167, 198, 213),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: donarName,
                decoration: InputDecoration(
                  labelText: "Donar Name",
                  hintText: "Enter your name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                // maxLength: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: donarnumber,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter your Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       labelText: "Donar Name",
            //       hintText: "Enter your name",
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(10),
            //           borderSide: const BorderSide(color: Colors.red)),
            //       focusedBorder: const OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.red, width: 2),
            //       ),
            //       enabledBorder: const OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.green, width: 2),
            //       ),
            //     ),
            //     // maxLength: 10,
            //   ),
            // ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: DropdownButtonFormField(
            //     decoration: const InputDecoration(labelText:" select bloodGroups"),
            //       items: bloodGroups
            //           .map((e) => DropdownMenuItem(value: e,child: Text(e),
            //           ))
            //           .toList(),
            //       onChanged: (val) {
            //         selectedgroups = val;
            //       }),
            // ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  decoration:
                      const InputDecoration(labelText: " select bloodGroups"),
                  items: bloodGroups
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    selectedgroups = val;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(
                          const Size(double.infinity, 50)),
                      backgroundColor: WidgetStateProperty.all(Colors.pink),
                      foregroundColor: WidgetStateProperty.all(Colors.white)),
                  onPressed: () {
                    update();
                  },
                  child: const Text(
                    "Update",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

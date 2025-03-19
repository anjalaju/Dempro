
import 'package:flutter/material.dart';

class AddUserPage extends StatefulWidget {
  const AddUserPage({super.key});

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  // final bloodGroups = ['A+', 'A-', 'B+', 'B-'];
  // String? selectedgroups;

  final bloodGroups = {'A+', 'A-', 'B+', 'B-'};
  String? selectedgroups;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Page"),
        backgroundColor: const Color.fromARGB(255, 167, 198, 213),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FieldText extends StatefulWidget {
  const FieldText({super.key});

  @override
  State<FieldText> createState() => _FieldTextState();
}

class _FieldTextState extends State<FieldText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter The number",
                  prefixIcon: Icon(Icons.verified_user),
                  suffixIcon: Icon(Icons.verified_outlined)),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter The number",
                suffixText: "hello",
                prefixText: "Hiii",
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter The number",
                  hintStyle:
                      TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
                  prefixText: "+91"),
              maxLength: 10,
              obscureText: true,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
// labelText: "Username",
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                // border: OutlineInputBorder()
              ),
              maxLength: 10,
            ),
            TextFormField(
                // controller: passwordcontroller,

                decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: ("Enter Your Password"),
              prefixIcon: const Icon(Icons.lock),
            )),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.amber
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
📌 2. Controller

Untuk mengambil atau mengatur teks yang ada di TextField.
*/

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<MyApp> {
  final TextEditingController usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose(); // penting! biar tidak bocor memori
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Controller Example")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Enter something",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Enter something",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String text = usernameController.text; // ambil nilai input
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("You typed: $text")));
              },
              child: Text("Show Input"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MyApp()));
}

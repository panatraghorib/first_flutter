import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  final String title;

  const MyStatelessWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title, style: const TextStyle(fontSize: 24)));
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: MyStatelessWidget(title: "Halo Chatyx!")),
    ),
  );
}

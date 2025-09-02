/*
Styling adalah cara mengatur tampilan teks, warna, dan 
tema aplikasi supaya aplikasi lebih menarik dan konsisten
*/

import 'package:flutter/material.dart';

class MyStyling extends StatelessWidget {
  const MyStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Styling());
  }
}

class Styling extends StatelessWidget {
  const Styling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Styling")),
      body: Center(
        child: Text(
          "Hallo saya Flutter",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MyStyling());

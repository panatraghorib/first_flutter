/*
Styling adalah cara mengatur tampilan teks, warna, dan 
tema aplikasi supaya aplikasi lebih menarik dan konsisten
*/

import 'package:flutter/material.dart';

class MyStylingTheme extends StatelessWidget {
  const MyStylingTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.amberAccent),
        ),
      ),
      home: Styling(),
    );
  }
}

class Styling extends StatelessWidget {
  const Styling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Styling")),
      body: Center(
        child: Column(
          children: [
            Text(
              "Hallo saya Flutter",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Hallo saya Flutter",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MyStylingTheme());

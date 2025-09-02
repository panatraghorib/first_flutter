/*
###3. Route Generator (opsional, lebih advance)

Selain routes: {}, bisa pakai onGenerateRoute → supaya fleksibel (misalnya parsing argument atau dynamic route).
*/

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/', //menentukan halaman pertama saat aplikasi dibuka
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => HomePage());
          case '/second':
            return MaterialPageRoute(builder: (_) => SecondPage());
          case '/third':
            return MaterialPageRoute(builder: (_) => ThirdPage());
          default:
        }
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("halaman Utama")),
      body: Column(
        children: [
          Center(child: Text("ini halaman utama!")),
          Center(child: Text("ini halaman utama!")),
          Center(child: Text("ini halaman utama!")),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text("Ke halaman dua!"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Text("Ke halaman tiga"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("halaman Kedua")),
      body: Column(
        children: [
          Center(child: Text("ini halaman kedua!")),
          Center(child: Text("ini halaman kedua!")),
          Center(child: Text("ini halaman kedua!")),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Ke halaman utama"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Text("Ke halaman tiga"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("halaman Ketiga")),
      body: Column(
        children: [
          Center(child: Text("ini halaman ketiga!")),
          Center(child: Text("ini halaman ketiga!")),
          Center(child: Text("ini halaman ketiga!")),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Ke halaman utama"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text("Ke halaman dua"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

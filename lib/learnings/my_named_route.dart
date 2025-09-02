/*
###Apa itu Named Routes?
Named Routes = sistem navigasi Flutter menggunakan nama (string) untuk setiap halaman.
Ibarat peta jalan: setiap rute punya alamat, dan kita tinggal panggil alamatnya untuk berpindah.
Berguna untuk aplikasi besar dengan banyak halaman.

###Struktur Dasar Named Routes
Definisikan semua route di MaterialApp.routes.
Navigasi menggunakan Navigator.pushNamed(context, "namaRoute").
Kembali dengan Navigator.pop(context).
*/

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/', //menentukan halaman pertama saat aplikasi dibuka
      routes: {
        //daftar semua route (key = nama route, value = widget/halaman).
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
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
                  child: Text("Ke halaman dua"),
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

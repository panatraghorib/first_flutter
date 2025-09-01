import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row & Column")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // atur posisi vertikal
        crossAxisAlignment: CrossAxisAlignment.center, // atur posisi horizontal
        children: [
          const Text("Baris 1"),
          const Text("Baris 2"),
          const Text("Baris 3"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // rata horizontal
            children: const [
              Text("Column 1"),
              Text("Column 2"),
              Text("Column 3"),
            ],
          ),
          //Dua kotak ukurannya fixed. tanpa Expanded
          Row(
            children: [
              Container(
                color: const Color.fromARGB(255, 14, 2, 179),
                width: 100,
                height: 100,
              ),
              Container(
                color: const Color.fromARGB(255, 7, 101, 145),
                width: 100,
                height: 100,
              ),
            ],
          ),
          //Dengan Expanded
          //Kedua kotak akan bagi rata sisa ruang
          Row(
            children: [
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 244, 54, 222),
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 175, 138, 15),
                  height: 100,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(color: Colors.red, height: 100),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.green, height: 100),
              ),
            ],
          ),
          //Flexible mirip Expanded
          //Expanded → memaksa anak mengisi penuh ruang yang tersedia
          //Flexible → memberi ruang sesuai kebutuhan anak, tanpa memaksa penuh.
          Row(
            children: [
              Flexible(
                child: Container(
                  color: const Color.fromARGB(255, 238, 255, 0),
                  height: 100,
                  width: 150,
                ), // lebar 50 dipatuhi
              ),
              Flexible(
                child: Container(
                  color: const Color.fromARGB(255, 47, 1, 27),
                  height: 100,
                  width: 200,
                ), // lebar 200 dipatuhi
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: MyRowColumn()));
}

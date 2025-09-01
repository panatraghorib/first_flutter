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
          Row(
            children: [
              //dengan decoration
              Expanded(
                child: Container(
                  height: 100,
                  // padding: EdgeInsets.all(1),
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 7, 101, 145),
                    border: Border.all(color: Colors.black, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: const Align(
                    alignment:
                        Alignment.centerRight, // posisi pojok kanan bawah
                    child: Padding(
                      padding: EdgeInsets.only(left: 1, right: 1, top: 1),
                      child: Text("Padding"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Dengan Expanded
          //Kedua kotak akan bagi rata sisa ruang
          Row(
            children: [
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 14, 2, 179),
                  height: 100,
                  child: const Center(child: Text("Hello Flutter")),
                ),
              ),
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

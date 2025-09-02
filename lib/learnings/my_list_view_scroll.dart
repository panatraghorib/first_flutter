import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ClolorGrid());
  }
}

class ClolorGrid extends StatelessWidget {
  const ClolorGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Viewx")),
      body: ListView(
        children: [
          Column(
            children: const [
              ListTile(title: Text("List 1")),
              ListTile(title: Text("List 2")),
              ListTile(title: Text("List 3")),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.star),
                title: Text("Item ke: $index"),
              );
            },
          ),
          // GridView Untuk menampilkan data berbentuk kotak
          //grid (seperti galeri foto, produk toko online).
          GridView.count(
            /*
            Secara default, ListView atau GridView akan berusaha 
            mengisi seluruh ruang kosong di parent-nya (jadi tinggi bisa tak terbatas).
            Kalau kita set shrinkWrap: true, maka ListView/GridView 
            akan menyesuaikan tinggi sesuai jumlah item di dalamnya.
            */
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), //crolling dimatikan → artinya list/grid itu tidak bisa discroll sendiri, tapi tetap bisa ikut discroll oleh parent-nya (misalnya SingleChildScrollView atau ListView induk).
            crossAxisCount: 2, //jumlah colom
            children: List.generate(8, (index) {
              return Container(
                margin: const EdgeInsets.all(8),
                //berulang dari index 0,
                // index % 8 artinya hasilnya akan berulang dari 0 → 7.
                //(index % 8) + 1, Tambah 1 supaya hasilnya dari 1 → 8 (bukan 0 → 7).
                //jadi sama dengan 100*1=100 ... 100*8=800
                color: Colors.red[100 * ((index % 9) + 1)],
                child: Center(child: Text("Item $index")),
              );
            }),
          ),
          GridView.builder(
            //layout grid menggunakan SliverGridDelegateWithFixedCrossAxisCount
            //aturan (delegate) yang mengatur bagaimana item di dalam GridView ditampilkan
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //ada 3 kolom
              crossAxisSpacing: 2, // jarak antar kolom
              mainAxisSpacing: 2, // jarak antar baris
            ),
            itemCount: 20, // jumlah grid/kotak yang akan dibuat
            itemBuilder: (context, index) {
              //isian kotak
              return Container(
                color: Colors.teal[100 * ((index % 8) + 1)],
                child: Center(child: Text("Box $index")),
              );
            },
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            //WithMaxCrossAxisExtent → lebar maksimal tiap item ditentukan,
            //jumlah kolom akan menyesuaikan otomatis tergantung ukuran layar
            //alau layar kecil → hanya 2 kolom -
            //Kalau layar lebar → bisa jadi 4–5 kolom, selama lebar item ≤ maxCrossAxisExtent
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150, // Lebar maksimal tiap item
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.orange[100 * ((index % 8) + 1)],
                child: Center(child: Text("Box $index")),
              );
            },
          ),
          Column(
            children: List.generate(20, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Baris ke-$index",
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

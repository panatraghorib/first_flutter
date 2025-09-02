import 'package:flutter/material.dart';
import 'package:first_flutter/app_routes.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                  child: Text("Ke halaman utama"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.third);
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

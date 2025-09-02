import 'package:flutter/material.dart';
import 'package:first_flutter/app_routes.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                  child: Text("Ke halaman utama"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.second);
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

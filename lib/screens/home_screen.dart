import 'package:flutter/material.dart';
import 'package:first_flutter/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("Hello, Struktur Flutter!"), CustomButton()],
        ),
      ),
    );
  }
}

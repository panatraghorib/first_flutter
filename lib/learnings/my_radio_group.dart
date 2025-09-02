/*

Flutter (>= 3.32.0) memang mendepresiasi groupValue di Radio dan RadioListTile.
Sekarang cara yang disarankan adalah pakai RadioGroup sebagai 
"ancestor" untuk mengelola value dari semua radio dalam satu grup
*/

import 'package:flutter/material.dart';

class RadioGroupExample extends StatefulWidget {
  @override
  _RadioGroupExampleState createState() => _RadioGroupExampleState();
}

class _RadioGroupExampleState extends State<RadioGroupExample> {
  String? selectedGender = "Laki-laki";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioGroup Example")),
      body: RadioGroup<String>(
        groupValue: selectedGender,
        onChanged: (value) {
          setState(() {
            selectedGender = value;
          });
        },
        child: Column(
          children: [
            RadioMenuButton<String>(
              value: "Laki-laki",
              groupValue: selectedGender,
              onChanged: (String? value) {
                setState(() {
                  selectedGender = value;
                });
              },
              child: Text("Laki-laki"),
            ),
            RadioMenuButton<String>(
              value: "Perempuan",
              groupValue: selectedGender,
              onChanged: (String? value) {
                setState(() {
                  selectedGender = value;
                });
              },
              child: Text("Perempuan"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: RadioGroupExample()));
}

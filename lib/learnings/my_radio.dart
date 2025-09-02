import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String gender = "Laki-laki";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Example")),
      body: Column(
        children: [
          RadioListTile<String>(
            title: Text("Laki-laki"),
            value: "Laki-laki",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Text("Perempuan"),
            value: "Perempuan",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),
          Text("Terpilih: $gender"),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: RadioExample()));
}

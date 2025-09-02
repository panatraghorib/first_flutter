import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  _MyCheckbox createState() => _MyCheckbox();
}

class _MyCheckbox extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contoh Checkbox")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Oke setuju"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MyCheckbox()));
}

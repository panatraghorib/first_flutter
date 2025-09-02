import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Example")),
      body: Center(
        child: SwitchListTile(
          title: Text("Aktifkan Notifikasi"),
          value: isOn,
          onChanged: (bool value) {
            setState(() {
              isOn = value;
            });
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: SwitchExample()));
}

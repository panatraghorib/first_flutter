/*
Drawer adalah menu navigasi samping (side menu) yang bisa dibuka dengan swipe atau 
klik icon menu (hamburger menu). Biasanya dipakai untuk menu tambahan.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyDrawer()));
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contoh Drawe")),
      body: DrawerExample(),
    );
  }
}

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Example")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // biar rapat ke atas
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu Drawer",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context); // tutup drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Swipe from left or tap menu icon!")),
    );
  }
}

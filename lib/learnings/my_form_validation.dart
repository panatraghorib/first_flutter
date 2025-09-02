import 'package:flutter/material.dart';

class ValidationExample extends StatefulWidget {
  const ValidationExample({super.key});

  @override
  _ValidationExampleState createState() => _ValidationExampleState();
}

class _ValidationExampleState extends State<ValidationExample> {
  /*
  Apa itu GlobalKey?
  GlobalKey adalah kunci unik yang bisa digunakan untuk mengidentifikasi dan mengakses 
  state dari sebuah widget tertentu di dalam widget tree.
  Dengan GlobalKey, kita bisa berkomunikasi langsung dengan widget tersebut meskipun 
  berada di tempat lain dalam tree.
*/
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  /*
  Di Flutter, dispose() adalah lifecycle method pada StatefulWidget 
  yang dipanggil ketika widget dihapus dari widget tree (tidak dipakai lagi).
  Contoh:
  Pindah halaman (Navigator push → halaman lama dihapus).
  Widget diganti dengan widget lain.
  Kalau kamu override dispose(), bisa membersihkan resource 
  (seperti controller, stream, animation, dsb) supaya tidak bocor memori.
  Lepas semua listener.
  Kosongkan buffer teks.
  Tandai objek untuk siap dihapus oleh garbage collector
  */
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Validation Example")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // penting untuk validasi
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email tidak boleh kosong";
                  }
                  if (!value.contains("@")) {
                    return "Email tidak valid";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                obscureText: true, // password tersembunyi
                decoration: InputDecoration(labelText: "Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password tidak boleh kosong";
                  }
                  if (value.length < 6) {
                    return "Password minimal 6 karakter";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Login berhasil")));
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ValidationExample()));
}

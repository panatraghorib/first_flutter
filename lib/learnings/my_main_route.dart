import 'package:flutter/material.dart';
import 'package:first_flutter/app_routes.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute:
          AppRoutes.home, //menentukan halaman pertama saat aplikasi dibuka
      routes: AppRoutes.routes,
    ),
  );
}

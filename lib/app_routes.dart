import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/second_screen.dart';
import './screens/third_screen.dart';

class AppRoutes {
  static const home = '/';
  static const second = '/second';
  static const third = '/third';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomeScreen(),
    second: (context) => SecondScreen(),
    third: (context) => ThirdScreen(),
  };
}

import 'package:flutter/material.dart';
import 'package:qabella/splash/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFF010510),
        primaryColor: Color(0xFFe9c74e),
        fontFamily: 'Qabella',
      ),
      home: SplashView(),
    );
  }
}

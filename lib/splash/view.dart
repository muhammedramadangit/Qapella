import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qabella/login/view.dart';
import 'package:qabella/widgets/colors.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => LoginView()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/imgs/splash.png', fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 6),
                Image.asset('assets/imgs/logo.png'),
                Text(
                  'نادى العيسى الإجتماعي',
                  style: TextStyle(
                    color: yellow,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'colors.dart';

Widget contactIcon({
  BuildContext context,
  String title,
  String socialIcon,
}) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: [
        Center(
          child: Container(
            height: 44,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 50, top: 12),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: grey.withOpacity(0.2),
                  blurRadius: 9,
                  offset: Offset(1, 3),
                ),
              ],
            ),
            child: Text(
              title,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: black,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(socialIcon),
        ),
      ],
    ),
  );
}

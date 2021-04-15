import 'package:flutter/material.dart';
import 'colors.dart';

Widget customButton({
  Function onTap,
  String title,
  BuildContext context,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        color: yellow,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

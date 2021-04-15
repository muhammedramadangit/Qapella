import 'package:flutter/material.dart';
import 'colors.dart';

Widget customItem({
  Function onTap,
  String title,
  String imgTitle,
}) {
  return InkWell(
    onTap: onTap,
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: black,
          fontSize: 15,
        ),
      ),
      leading: Image.asset(imgTitle),
    ),
  );
}

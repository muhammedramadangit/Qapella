import 'package:flutter/material.dart';
import 'colors.dart';

Widget customContainer({
  BuildContext context,
  String title,
  Function onTap,
  String mainIcon,
  String icon,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.fromLTRB(25, 12, 15, 12),
      decoration: BoxDecoration(
        color: yellow,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(icon),
                  SizedBox(width: 5),
                  Container(
                    height: 55,
                    width: 190,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(mainIcon),
            ],
          ),
        ],
      ),
    ),
  );
}

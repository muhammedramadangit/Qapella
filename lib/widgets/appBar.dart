import 'package:flutter/material.dart';
import 'package:qabella/widgets/colors.dart';

Widget customAppBar({
  BuildContext context,
  String title,
}) {
  return Align(
    alignment: Alignment.topRight,
    child: Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            /* onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomeView()));
            }, */
            child: Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset('assets/imgs/backwhite.png'),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}

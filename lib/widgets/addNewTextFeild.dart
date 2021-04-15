import 'package:flutter/material.dart';
import 'package:qabella/widgets/colors.dart';

Widget addNewTextField({
  String hintText,
  bool obSecure,
  TextInputType type,
  Function validator,
  Function onSaved,
  TextEditingController controller,
  Widget suffix,
  String title,
}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: black,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 5),
        TextFormField(
          obscureText: obSecure,
          keyboardType: type,
          validator: validator,
          onSaved: onSaved,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 11),
            suffixIcon: suffix,
          ),
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}

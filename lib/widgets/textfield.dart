import 'package:flutter/material.dart';

Widget textField({
  String hintText,
  bool obSecure,
  TextInputType type,
  Function validator,
  Function onSaved,
  TextEditingController controller,
  Widget suffix,
}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: TextFormField(
      obscureText: obSecure,
      keyboardType: type,
      validator: validator,
      onSaved: onSaved,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14),
        suffixIcon: suffix,
      ),
    ),
  );
}

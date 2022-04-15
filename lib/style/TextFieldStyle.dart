import 'package:flutter/material.dart';

InputDecoration getOutlineBorderDecoration({
  String? hintText = '',
  int? color = 0xff6342E8,
}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 19),
    filled: true,
    fillColor: Color(color!),
    hintText: hintText,
    errorStyle: TextStyle(
      color: Colors.red,
    ),
    hintStyle: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.0,
      ),
    ),
  );
}

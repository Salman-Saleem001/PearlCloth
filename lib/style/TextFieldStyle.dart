import 'package:flutter/material.dart';

InputDecoration getOutlineBorderDecoration({
  String? hintText = '',
  int? color = 0xff6342E8,
}) {
  return InputDecoration(
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
    border: InputBorder.none,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.0,
      ),
    ),
  );
}

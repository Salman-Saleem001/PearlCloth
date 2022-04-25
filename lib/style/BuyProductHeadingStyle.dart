import 'package:flutter/cupertino.dart';

TextStyle getBuyProductHeadingStyle(
    {double? size = 14, int? color = 0xff000000, String? fontFamily}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: size,
    fontWeight: FontWeight.w400,
    color: Color(color!),
  );
}

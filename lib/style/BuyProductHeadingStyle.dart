import 'package:flutter/cupertino.dart';

TextStyle getBuyProductHeadingStyle(
    {double? size = 14, int? color = 0xff000000}) {
  return TextStyle(
    fontSize: size,
    fontWeight: FontWeight.w400,
    color: Color(color!),
  );
}

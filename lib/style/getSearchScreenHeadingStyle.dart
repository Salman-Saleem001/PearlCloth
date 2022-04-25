import 'package:flutter/cupertino.dart';

TextStyle getSearchScreenHeadingStyle(
    {double? size = 14, int? color = 0xff000000}) {
  return TextStyle(
    fontSize: size,
    fontFamily: 'DMSans',
    fontWeight: FontWeight.w400,
    color: Color(color!),
  );
}

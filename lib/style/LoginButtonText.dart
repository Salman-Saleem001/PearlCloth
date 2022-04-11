import 'package:flutter/cupertino.dart';

Text getButtonText({required String name, int? color}) {
  return Text(
    name,
    style: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 22,
      color: Color(color!),
    ),
  );
}

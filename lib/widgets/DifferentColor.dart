import 'package:flutter/cupertino.dart';

Container getDifferentColor({required int color, context}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10, left: 10),
    height: MediaQuery.of(context).size.height / 68,
    width: MediaQuery.of(context).size.width / 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(color),
    ),
  );
}

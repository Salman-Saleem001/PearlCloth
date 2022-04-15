import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';

Widget getDrawerData1({String? name}) {
  return Padding(
    padding: EdgeInsets.only(right: 70, bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.favorite_outline,
          color: Color(ColorX.primaryBlack),
        ),
        Text(
          name!,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(ColorX.primaryBlack),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Color(ColorX.statusColor),
        ),
      ],
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';

Row getHomeHeader({required String title, String? buttonText}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Color(ColorX.sfUiBlack),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'See all',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(ColorX.statusColor),
          ),
        ),
      )
    ],
  );
}

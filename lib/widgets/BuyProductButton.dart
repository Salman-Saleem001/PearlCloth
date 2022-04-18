import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';

Container getBuyProductButton(context) {
  return Container(
    margin: EdgeInsets.only(right: 17),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: Color(ColorX.primaryBlack),
    ),
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 50, right: 49, top: 19, bottom: 15),
          child: Text(
            '\$580',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(ColorX.white)),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3,
          child: Container(
            padding: EdgeInsets.only(left: 18, right: 18, top: 19, bottom: 15),
            decoration: BoxDecoration(
              color: Color(ColorX.blue),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              Icons.lock_outline,
              size: 17,
              color: Color(ColorX.white),
            ),
          ),
        ),
      ],
    ),
  );
}

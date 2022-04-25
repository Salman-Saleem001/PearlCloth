import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';

Row getSearchScreenHead(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        splashRadius: 20,
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Color(ColorX.primaryBlack),
        ),
      ),
      Text(
        'Search',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(ColorX.primaryBlack),
        ),
      ),
      IconButton(
        onPressed: () {},
        splashRadius: 20,
        icon: Icon(
          Icons.shopping_cart_outlined,
          color: Color(ColorX.primaryBlack),
        ),
      ),
    ],
  );
}

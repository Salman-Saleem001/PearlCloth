import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/BuyProductHeadingStyle.dart';
import '../style/color.dart';

Row getPrecautionDetails({IconData? icon, String? label, int? textColor}) {
  return Row(
    children: [
      Icon(
        icon,
        color: Color(ColorX.greyScale),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: label != null
            ? Text(
                label,
                style: getBuyProductHeadingStyle(size: 14, color: textColor),
              )
            : null,
      ),
    ],
  );
}

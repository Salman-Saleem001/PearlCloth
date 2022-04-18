import 'package:flutter/material.dart';

import '../style/BuyProductHeadingStyle.dart';
import '../style/color.dart';
import 'PrecautionsDetails.dart';

ExpansionTile getExpansionTileProduct(
    {String? title, String? lowerTitle, IconData? icon}) {
  return ExpansionTile(
    title: getPrecautionDetails(
        icon: icon, label: title, textColor: ColorX.primaryBlack),
    tilePadding: EdgeInsets.zero,
    childrenPadding: EdgeInsets.only(left: 20),
    iconColor: Color(ColorX.greyScale),
    collapsedIconColor: Color(ColorX.greyScale),
    children: [
      ListTile(
        title: Text(
          lowerTitle!,
          style: getBuyProductHeadingStyle(color: ColorX.greyScale),
        ),
      )
    ],
  );
}

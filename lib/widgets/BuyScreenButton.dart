import 'package:flutter/cupertino.dart';

import '../style/color.dart';

Container getBuyScreenButton({required IconData icon}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Color(ColorX.shareButton),
    ),
    child: Icon(
      icon,
      size: 20,
      color: Color(ColorX.sfUiBlack).withOpacity(0.3),
    ),
  );
}

import 'package:flutter/cupertino.dart';

import '../style/color.dart';

Row getSignUpWith() {
  return Row(
    children: [
      Expanded(
        child: Container(
          height: 3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.topRight,
              colors: [
                Color(ColorX.white).withOpacity(0),
                Color(ColorX.pink).withOpacity(1),
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Text(
          'Or Sign Up With',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(ColorX.lightGrey),
          ),
        ),
      ),
      Expanded(
        child: Container(
          height: 3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.topLeft,
              colors: [
                Color(ColorX.white).withOpacity(0),
                Color(ColorX.pink).withOpacity(1),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

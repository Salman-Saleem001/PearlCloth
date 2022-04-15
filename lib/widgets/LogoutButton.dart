import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/style/LogoutStyle.dart';

import '../style/color.dart';

Widget getLogOutButton() {
  return Row(
    children: [
      Icon(
        Icons.logout,
        color: Color(ColorX.primaryBlack),
      ),
      Text(
        'Logout',
        style: getLogoutStyle(),
      ),
    ],
  );
}

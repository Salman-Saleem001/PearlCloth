import 'package:flutter/cupertino.dart';
import 'package:pearlcloth/style/LogoutStyle.dart';

Widget getDrawerData2({String? name}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 12),
    child: Text(
      name!,
      style: getLogoutStyle(),
    ),
  );
}

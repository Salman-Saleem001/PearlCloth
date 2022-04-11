import 'package:flutter/cupertino.dart';

import '../style/LoginHeadingStyle.dart';

Text getLoginHeading({required String heading, int? color}) {
  return Text(
    heading,
    style: getHeadingTextStyle(),
    overflow: TextOverflow.ellipsis,
  );
}

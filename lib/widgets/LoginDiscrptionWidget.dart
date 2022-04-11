import 'package:flutter/cupertino.dart';

import '../style/LoginDiscriptionStyle.dart';

Text getLoginDiscription({required String discription}) {
  return Text(
    discription,
    style: getLoginDisStyle(),
  );
}

import 'package:flutter/cupertino.dart';

import 'LoginDiscrptionWidget.dart';
import 'LoginHeadingWidget.dart';

Column getLoginHeader() {
  return Column(
    children: [
      getLoginHeading(heading: 'Welcome Back'),
      SizedBox(
        height: 4,
      ),
      getLoginDiscription(
          discription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Diam maecenas mi non sed ut odio. Non, justo,\n                            sed facilisi et. '),
    ],
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DataCard.dart';
import 'HomeHeader.dart';

class HomeScreenData extends StatelessWidget {
  const HomeScreenData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getHomeHeader(title: 'Popular Category'),
        SizedBox(
          height: 24,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              for (int i = 0; i < 10; i++) DataCard(),
            ],
          ),
        ),
      ],
    );
  }
}

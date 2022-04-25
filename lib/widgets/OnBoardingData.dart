import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/BuyProductHeadingStyle.dart';
import '../style/color.dart';

class OnBoardingData extends StatelessWidget {
  String image;
  String label;
  int index;
  OnBoardingData(
      {Key? key, required this.image, required this.label, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          image,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  left: 34,
                  right: 31,
                  top: 107,
                ),
                child: Text(
                  label,
                  style: getBuyProductHeadingStyle(
                      size: 50, fontFamily: 'Pacifico'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 28, bottom: 36),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/LoginScreen');
                    },
                    child: Text(
                      'Skip',
                      style: getBuyProductHeadingStyle(
                          size: 20, fontFamily: 'Pacifico'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: index == 0
                          ? Color(ColorX.primaryBlack)
                          : Color(ColorX.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: index == 1
                          ? Color(ColorX.primaryBlack)
                          : Color(ColorX.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: index == 2
                          ? Color(ColorX.primaryBlack)
                          : Color(ColorX.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: index == 3
                          ? Color(ColorX.primaryBlack)
                          : Color(ColorX.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

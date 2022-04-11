import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/style/LoginButtonText.dart';
import 'package:pearlcloth/style/LoginScreenDecoration.dart';
import 'package:pearlcloth/style/color.dart';
import 'package:pearlcloth/widgets/LoginDiscrptionWidget.dart';
import 'package:pearlcloth/widgets/LoginHeadingWidget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 9),
          decoration: getLoginScreenDecoration(),
          child: Theme(
            data: ThemeData(
              fontFamily: "Outfit",
              primaryColor: Color(ColorX.loginHead),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 27),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(ColorX.pink),
                  ),
                  child: Image.asset('asset/image/Saly-1.png'),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      getLoginHeading(
                          heading: '     Discover your\n own Dream House'),
                      getLoginDiscription(
                        discription:
                            '    Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Diam maecenas mi non sed ut odio. Non, justo,sed facilisi\n      et. Eget viverra urna, vestibulum egestas faucibus \n             egestas. Sagittis nam velit volutpat eu nunc.',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 5,
                      bottom: MediaQuery.of(context).size.height / 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 16,
                        width: MediaQuery.of(context).size.width / 2,
                        child: FlatButton(
                          onPressed: () {},
                          color: Color(ColorX.pink),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                            ),
                          ),
                          child: getButtonText(
                              name: 'Sign in', color: ColorX.white),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 16,
                          child: FlatButton(
                            onPressed: () {},
                            color: Color(ColorX.registerButtonColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: getButtonText(
                                name: 'Register',
                                color: ColorX.buttonTextColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

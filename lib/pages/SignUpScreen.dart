import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import '../style/LoginButtonText.dart';
import '../style/LoginScreenDecoration.dart';
import '../style/TextFieldStyle.dart';
import '../style/color.dart';
import '../style/getButtonStyle.dart';
import '../widgets/LoginHeader.dart';
import '../widgets/OrSignUpWith.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 37),
            decoration: getLoginScreenDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                getLoginHeader(),
                SizedBox(
                  height: 26,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: getOutlineBorderDecoration(
                    hintText: 'Full Name',
                    color: ColorX.transparent,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: getOutlineBorderDecoration(
                    hintText: 'Username , Email & Phone Number',
                    color: ColorX.transparent,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: getOutlineBorderDecoration(
                    hintText: 'Password',
                    color: ColorX.transparent,
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 25,
                ),
                FlatButton(
                  color: Color(ColorX.pink),
                  shape: getButtonStyle(),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomeScreen');
                  },
                  child: getButtonText(name: 'Sign in', color: ColorX.white),
                ),
                SizedBox(
                  height: 26,
                ),
                getSignUpWith(),
                SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton.mini(
                        btnColor: Color(ColorX.btnColor),
                        padding: 11,
                        elevation: 0,
                        buttonType: ButtonType.google,
                        onPressed: () {}),
                    SignInButton.mini(
                        btnColor: Color(ColorX.btnColor),
                        padding: 11,
                        elevation: 0,
                        buttonType: ButtonType.facebook,
                        onPressed: () {}),
                    SignInButton.mini(
                        btnColor: Color(ColorX.btnColor),
                        padding: 11,
                        elevation: 0,
                        buttonType: ButtonType.apple,
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

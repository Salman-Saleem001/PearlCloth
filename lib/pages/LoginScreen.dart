import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/style/LoginButtonText.dart';
import 'package:pearlcloth/style/getButtonStyle.dart';
import 'package:pearlcloth/widgets/LoginHeader.dart';
import 'package:pearlcloth/widgets/OrSignUpWith.dart';
import 'package:sign_button/sign_button.dart';

import '../style/LoginScreenDecoration.dart';
import '../style/TextFieldStyle.dart';
import '../style/color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(ColorX.forgetButtonColor),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                color: Color(ColorX.pink),
                shape: getButtonStyle(),
                padding: EdgeInsets.symmetric(vertical: 16),
                onPressed: () {},
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
              SizedBox(
                height: 22,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Don\'t have any account?\n               Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(ColorX.singUpTextColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

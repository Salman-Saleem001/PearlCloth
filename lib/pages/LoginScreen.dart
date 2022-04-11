import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/widgets/LoginHeader.dart';

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
      body: Container(
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
                    style: TextStyle(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

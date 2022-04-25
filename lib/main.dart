import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/pages/BuyProductScreen.dart';
import 'package:pearlcloth/pages/HomeScreen.dart';
import 'package:pearlcloth/pages/IntroScreen.dart';
import 'package:pearlcloth/pages/LoginScreen.dart';
import 'package:pearlcloth/pages/OnBoardingScreen.dart';
import 'package:pearlcloth/pages/SearchScreen.dart';
import 'package:pearlcloth/pages/SignUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => OnBoardingScreen(),
        '/LoginScreen': (context) => LoginScreen(),
        '/SignUpScreen': (context) => SignUpScreen(),
        '/HomeScreen': (context) => HomeScreen(),
        '/IntroScreen': (context) => IntroScreen(),
        '/SearchScreen': (context) => SearchScreen(),
        '/BuyProductScreen': (context) => BuyProductScreen(),
      },
    );
  }
}

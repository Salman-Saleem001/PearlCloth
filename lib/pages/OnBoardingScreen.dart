import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/pages/LoginScreen.dart';
import 'package:pearlcloth/widgets/OnBoardingData.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> label = [
    'Life changes\nvery quickly',
    'It is hard\nsometimes',
    'Just adapt',
    'Things will\n get better\n    soon'
  ];
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          pageSnapping: true,
          children: [
            for (int i = 0; i < 4; i++)
              OnBoardingData(
                image:
                    'https://thumbs.dreamstime.com/b/hanging-white-lamp-shadow-old-vintage-painted-wall-background-creative-concept-46999380.jpg',
                label: label[i],
                index: i,
              ),
            LoginScreen(),
          ],
        ),
      ),
    );
  }
}

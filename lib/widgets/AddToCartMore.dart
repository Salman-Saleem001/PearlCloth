import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';

class AddToCartMore extends StatefulWidget {
  const AddToCartMore({Key? key}) : super(key: key);

  @override
  State<AddToCartMore> createState() => _AddToCartMoreState();
}

class _AddToCartMoreState extends State<AddToCartMore> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              value--;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(ColorX.btnColor)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.only(right: 19),
            child: Icon(
              Icons.remove,
              size: 15,
              color: Color(ColorX.greyScale),
            ),
          ),
        ),
        Text('${value}'),
        GestureDetector(
          onTap: () {
            setState(() {
              value++;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 19),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(ColorX.primaryBlack)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Icon(
              Icons.add,
              size: 15,
              color: Color(ColorX.white),
            ),
          ),
        ),
      ],
    );
  }
}

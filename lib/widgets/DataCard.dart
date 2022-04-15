import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';

class DataCard extends StatefulWidget {
  const DataCard({Key? key}) : super(key: key);

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 150,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://brumano.b-cdn.net/wp-content/uploads/2018/12/Royal-Blue-Casual-Check-Shirt-1-min.jpg',
            height: 125,
            width: 125,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'C02 - Cable',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(ColorX.primaryBlack),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'USD 25',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(ColorX.primaryBlack),
                    ),
                  ),
                ],
              ),
              IconButton(
                iconSize: 16,
                splashRadius: 20,
                onPressed: () {
                  setState(() {
                    check = !check;
                  });
                },
                icon: check
                    ? Icon(
                        Icons.favorite,
                        color: Color(ColorX.orange),
                      )
                    : Icon(
                        Icons.favorite_outline,
                        color: Color(ColorX.orange),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

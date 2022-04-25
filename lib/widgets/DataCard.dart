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
  String image =
      'https://brumano.b-cdn.net/wp-content/uploads/2018/12/Royal-Blue-Casual-Check-Shirt-1-min.jpg';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 3,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/BuyProductScreen');
              },
              child: Image.network(
                'https://brumano.b-cdn.net/wp-content/uploads/2018/12/Royal-Blue-Casual-Check-Shirt-1-min.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'C02 - Cable',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(ColorX.primaryBlack),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 180,
                  ),
                  Text(
                    'USD 25',
                    overflow: TextOverflow.ellipsis,
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
                splashRadius: 16,
                padding: EdgeInsets.only(right: 8),
                constraints: BoxConstraints(maxWidth: 40, maxHeight: 30),
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

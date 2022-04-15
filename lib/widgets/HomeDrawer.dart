import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/widgets/DrawerData1.dart';
import 'package:pearlcloth/widgets/DrawerData2.dart';
import 'package:pearlcloth/widgets/LogoutButton.dart';

import '../style/color.dart';

Drawer getHomeDrawer(context) {
  List<String> name = [
    'Favorite',
    'List',
    'Account',
    'Buy Again',
    'My Order',
  ];
  List<String> name1 = ['Shop By Department', 'Customer Service', 'Settings'];
  return Drawer(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: ListView(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFqCCPaO3bPD5f7gbTyZ5MBb9Q1wFuQDxdhA&usqp=CAU',
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ashfak Sayem',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(ColorX.primaryBlack),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'ashfaksayem@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(ColorX.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  for (int i = 0; i < name.length; i++)
                    getDrawerData1(name: name[i]),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < name1.length; i++)
                    getDrawerData2(name: name1[i]),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 6),
                child: getLogOutButton(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

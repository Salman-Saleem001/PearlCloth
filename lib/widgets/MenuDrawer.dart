import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';
import 'DrawerData2.dart';
import 'LogoutButton.dart';

Drawer getMenuDrawer(context) {
  List<String> name1 = ['Shop By Department', 'Customer Service', 'Settings'];
  return Drawer(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFqCCPaO3bPD5f7gbTyZ5MBb9Q1wFuQDxdhA&usqp=CAU',
                  fit: BoxFit.cover,
                  height: 90,
                  width: 90,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Mika Viano',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(ColorX.sfUiBlack),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Edit profile',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(ColorX.blue),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
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

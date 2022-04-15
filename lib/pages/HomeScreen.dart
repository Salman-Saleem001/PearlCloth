import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/widgets/HomeDrawer.dart';
import 'package:pearlcloth/widgets/HomeScreenData.dart';
import 'package:pearlcloth/widgets/MenuDrawer.dart';

import '../style/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Container(
          padding: EdgeInsets.only(left: 24, right: 24, top: 36),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFqCCPaO3bPD5f7gbTyZ5MBb9Q1wFuQDxdhA&usqp=CAU',
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Mika!',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(ColorX.sfUiBlack),
                        ),
                      ),
                      Text(
                        'Good morning!',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(ColorX.statusColor),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    splashRadius: 20,
                    constraints: BoxConstraints(
                      minHeight: 0,
                      minWidth: 0,
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Color(ColorX.primaryBlack),
                    ),
                  ),
                  IconButton(
                    splashRadius: 20,
                    constraints: BoxConstraints(
                      minHeight: 0,
                      minWidth: 0,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                    },
                    icon: Icon(
                      Icons.segment,
                      color: Color(ColorX.primaryBlack),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Container(height: 300, child: HomeScreenData()),
                  ],
                ),
              ),
            ],
          ),
        ),
        endDrawer: getHomeDrawer(context),
        drawer: getMenuDrawer(context),
        // endDrawerEnableOpenDragGesture: true,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/style/SearchFieldDecoration.dart';
import 'package:pearlcloth/style/getSearchScreenHeadingStyle.dart';
import 'package:pearlcloth/widgets/SearchScreenCard.dart';
import 'package:pearlcloth/widgets/SearchScreenHead.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            left: 33,
            right: 23,
            top: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getSearchScreenHead(context),
              SizedBox(
                height: MediaQuery.of(context).size.height / 85,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: getSearchFieldDecoration(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              Text(
                'Popular Product',
                style: getSearchScreenHeadingStyle(size: 16),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < 4; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: 25),
                        child: getSearchScreenCard(
                            image:
                                'https://phucanhcdn.com/media/product/38631_beats_solo3_wireless_headphones_1_3.jpg',
                            label: 'TMA-2 Comfort Wireless ',
                            price: 270,
                            rating: 4.6,
                            reviews: 86),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

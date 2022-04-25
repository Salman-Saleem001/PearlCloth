import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color.dart';
import '../style/getSearchScreenHeadingStyle.dart';

// Widget getSearchScreenCard(
//     {context,
//     String? image,
//     String? label,
//     int? price,
//     double? rating,
//     int? reviews}) {
//   return
// }
class getSearchScreenCard extends StatelessWidget {
  String? image;
  String? label;
  int? price;
  double? rating;
  int? reviews;
  getSearchScreenCard(
      {Key? key, this.image, this.label, this.reviews, this.rating, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Color(ColorX.greyLight),
          child: Image.network(
            image!,
            fit: BoxFit.contain,
            height: 55,
            width: 55,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 85,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label!,
                style: getSearchScreenHeadingStyle(size: 16),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 114,
              ),
              Text(
                'USD ${price}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(ColorX.primaryBlack),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 127,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(ColorX.accent),
                    size: 13,
                  ),
                  Text(
                    '${rating}',
                    style: getSearchScreenHeadingStyle(size: 12),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 90,
                  ),
                  Text(
                    '${reviews} Reviews',
                    style: getSearchScreenHeadingStyle(size: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
          child: IconButton(
            onPressed: () {},
            splashRadius: 10,
            iconSize: 20,
            icon: Icon(
              Icons.more_vert_outlined,
              color: Color(ColorX.darkGrey),
            ),
          ),
        ),
      ],
    );
  }
}

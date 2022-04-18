import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlcloth/style/BuyProductHeadingStyle.dart';
import 'package:pearlcloth/widgets/AddToCartMore.dart';
import 'package:pearlcloth/widgets/BuyProductButton.dart';
import 'package:pearlcloth/widgets/BuyScreenButton.dart';
import 'package:pearlcloth/widgets/DifferentColor.dart';
import 'package:pearlcloth/widgets/ExpansionTileProduct.dart';
import 'package:pearlcloth/widgets/PrecautionsDetails.dart';

import '../style/color.dart';

class BuyProductScreen extends StatelessWidget {
  const BuyProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> color = [
      ColorX.sfUiBlack,
      ColorX.blue,
      ColorX.grey,
      ColorX.orange
    ];
    List<String> label = [
      'Do not use bleach',
      'Do not tumble dry',
      'Dry clean with tetrachloride\'s',
      'Iron at a maximum of 110ºC/230ºF'
    ];
    List<String> title = [
      'Free Flat Rate Shipping',
      'COD Policy',
      'Return Policy'
    ];
    List<IconData> expansionIcon = [
      Icons.shopping_cart_outlined,
      Icons.apps_outage,
      Icons.cached_rounded,
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 32, left: 24, right: 24),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                child: Stack(
                  children: [
                    Center(
                      child: Image.network(
                        'https://brumano.b-cdn.net/wp-content/uploads/2018/12/Royal-Blue-Casual-Check-Shirt-1-min.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back,
                                color: Color(ColorX.sfUiBlack),
                              ),
                            ),
                            getBuyScreenButton(icon: Icons.share),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 90,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            getBuyScreenButton(icon: Icons.favorite),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (int i = 0; i < color.length; i++)
                              getDifferentColor(
                                  color: color[i], context: context),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'MOHAN',
                            style: getBuyProductHeadingStyle(size: 16),
                          ),
                          IconButton(
                            onPressed: () {},
                            splashRadius: 20,
                            padding: EdgeInsets.all(0.0),
                            icon: Icon(
                              Icons.upload_outlined,
                              color: Color(ColorX.sfUiBlack).withOpacity(.3),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Recycle Boucle Knit Cardigan Pink',
                        style: getBuyProductHeadingStyle(
                            size: 16, color: ColorX.greyScale),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 92),
                      Text(
                        '\$ 120',
                        style: getBuyProductHeadingStyle(
                            size: 18, color: ColorX.orange),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Color',
                            style: getBuyProductHeadingStyle(
                                size: 12, color: ColorX.greyScale),
                          ),
                          for (int i = 0; i < color.length - 1; i++)
                            getDifferentColor(color: color[i], context: context)
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 70,
                      ),
                      Text(
                        'MATERIALS',
                        style: getBuyProductHeadingStyle(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text(
                        'We work with monitoring programmes to ensure\ncompliance with safety, health and quality\nstandards for our products. ',
                        overflow: TextOverflow.ellipsis,
                        style:
                            getBuyProductHeadingStyle(color: ColorX.greyScale),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 85,
                      ),
                      Text(
                        'Care',
                        style: getBuyProductHeadingStyle(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 94,
                      ),
                      Text(
                        'To keep your jackets and coats clean, you only\nneed to freshen them up and go over them with a\ncloth or a clothes brush. If you need to dry clean\na garment, look for a dry cleaner that uses\ntechnologies that are respectful of the\nenvironment.',
                        overflow: TextOverflow.ellipsis,
                        style: getBuyProductHeadingStyle(
                            size: 14, color: ColorX.greyScale),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 85,
                      ),
                      for (int i = 0; i < label.length; i++)
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          child: getPrecautionDetails(
                              icon: Icons.warning_amber_outlined,
                              textColor: ColorX.greyScale,
                              label: label[i]),
                        ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 60,
                      ),
                      Text(
                        'Care',
                        style: getBuyProductHeadingStyle(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      for (int i = 0; i < title.length; i++)
                        getExpansionTileProduct(
                          icon: expansionIcon[i],
                          title: title[i],
                          lowerTitle:
                              'Estimated to be delivered on\n09/11/2021 - 12/11/2021.',
                        ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddToCartMore(),
                    Expanded(
                      child: getBuyProductButton(context),
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

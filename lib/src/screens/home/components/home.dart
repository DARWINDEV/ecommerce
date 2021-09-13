import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/screens/home/components/categories.dart';
import 'package:ecommerce/src/screens/home/components/header.dart';
import 'package:ecommerce/src/screens/home/components/popular_products.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/home/components/saleBanner.dart';
import 'package:ecommerce/src/screens/home/components/specialOfferCard.dart';
import 'package:ecommerce/src/utils/size_config.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          SizedBox(height: getProportionateScreenHeight(20)),
          Header(),
          SizedBox(height: getProportionateScreenHeight(30)),
          SaleBanner(title: 'A Summer Suprise\n', saleText: 'Cashback 20%'),
          SizedBox(height: getProportionateScreenHeight(30)),
          Categories(),
          SizedBox(height: getProportionateScreenHeight(30)),
          SpecialOffertCard(),
          SizedBox(height: getProportionateScreenHeight(30)),
          PopularProducts()
        ],
      ),
    ));
  }
}


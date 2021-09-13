import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/home/components/recommendations_title.dart';
import 'package:ecommerce/src/utils/size_config.dart';

class SpecialOffertCard extends StatelessWidget {
  const SpecialOffertCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecomentarionsTitle(
          header: 'Special for you',
          seeMore: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              Sales(
                img: 'assets/images/Image Banner 2.png',
                category: 'Smartphone',
                numOfBrands: 18,
                press: () {},
              ),
              Sales(
                img: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(18),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Sales extends StatelessWidget {
  const Sales({
    Key? key,
    required this.category,
    required this.img,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, img;
  final int numOfBrands;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenHeight(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
          child: Stack(
            children: [
              Image.asset(img, fit: BoxFit.cover),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff343434).withOpacity(0.4),
                      Color(0xff343434).withOpacity(0.15),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(15),
                ),
                child: Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                      text: '$category\n',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: '$numOfBrands Brands')
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

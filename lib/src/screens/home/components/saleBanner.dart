import 'package:flutter/material.dart';

import 'package:ecommerce/src/utils/size_config.dart';

class SaleBanner extends StatelessWidget {
  const SaleBanner({
    Key? key,
    required this.title,
    required this.saleText,
  }) : super(key: key);

  final String title;
  final String saleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(15)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFF4A3298), borderRadius: BorderRadius.circular(20)),
      child: Text.rich(TextSpan(
          text: title,
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: saleText,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.bold))
          ])),
    );
  }
}
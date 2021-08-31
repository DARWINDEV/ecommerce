import 'package:flutter/material.dart';

import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text('TOKOTO',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            )),
        Text(text!),
        Spacer(),
        Image.asset(image!,
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(235)),
      ],
    );
  }
}
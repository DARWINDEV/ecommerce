import 'package:ecommerce/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key, required this.icon, required this.press,
  }) : super(key: key);
  final String icon;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          height: getProportionateScreenHeight(40),
          width: getProportionateScreenWidth(40),
          decoration:
              BoxDecoration(color: Color(0XFFF5F6F9), shape: BoxShape.circle),
          child: SvgPicture.asset(icon)),
          onTap: press,
    );
  }
}

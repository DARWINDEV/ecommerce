import 'package:ecommerce/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixMethod extends StatelessWidget {
  const CustomSuffixMethod({
    Key? key, required this.iconSvg,
  }) : super(key: key);
  final String? iconSvg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          0,
          getProportionateScreenWidth(20),
          getProportionateScreenWidth(20),
          getProportionateScreenWidth(20)),
      child: SvgPicture.asset(
        iconSvg!,
        height: getProportionateScreenHeight(18),
      ),
    );
  }
}
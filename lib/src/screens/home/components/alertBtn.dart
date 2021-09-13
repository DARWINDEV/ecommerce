import 'package:flutter/material.dart';

import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({
    Key? key, required this.svgIcon, this.notifies = 0, required this.press,
  }) : super(key: key);

  final String svgIcon;
  final num notifies;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(46),
      onTap: press,
      child: Stack(clipBehavior: Clip.none, children: <Widget>[
        Container(
            padding:
                EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenHeight(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgIcon)),
        if(notifies != 0)
        Positioned(
          top: -3,
          right: 0,
          child: Container(
            height: getProportionateScreenHeight(16),
            width: getProportionateScreenWidth(16),
            decoration: BoxDecoration(
                color: Color(0xFFFF4848), shape: BoxShape.circle),
            child: Center(
                child: Text("$notifies",
                    style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontSize: getProportionateScreenWidth(10),
                        fontWeight: FontWeight.bold))),
          ),
        )
      ]),
    );
  }
}
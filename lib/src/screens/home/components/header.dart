import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/home/components/alertBtn.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: SizeConfig.screenWidth! * 0.6,
            // height: getProportionateScreenHeight(50),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search Product',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(9),
                    horizontal: getProportionateScreenWidth(20)),
              ),
              onChanged: (value) {},
            ),
          ),
          AlertButton(svgIcon: 'assets/icons/Cart Icon.svg', notifies: 0, press: (){},),
          AlertButton(svgIcon: 'assets/icons/Bell.svg', notifies: 3, press: (){},)
        ],
      ),
    );
  }
}

import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/widgets/genericButton.dart';
import 'package:flutter/material.dart';

class SuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight! * 0.5,
        ), 
        SizedBox(height: SizeConfig.screenHeight! * 0.08,),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: GenericButton(text: "Back to home", press: () => Navigator.pushNamed(context, 'homePage')),
        ),
        Spacer()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/otp/components/otp_form.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';


class OtpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Text(
              'OPT Verification',
              style: headingStyle,
            ),
            Text('We sent your code to +1 898 860 ***'),
            timer(),
            SizedBox(height: SizeConfig.screenHeight! * 0.15),
            OtpForm(),
            SizedBox(height: SizeConfig.screenHeight! * 0.1),
            InkWell(
              onTap: (){},
              child: Text('Resend OTP Code', style: TextStyle(decoration: TextDecoration.underline)),
            )
          ],
        ),
      ),
    );
  }

  Widget timer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: IntTween(begin: 30, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, int value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}



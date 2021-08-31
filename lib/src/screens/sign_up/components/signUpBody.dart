import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/sign_up/components/sign_up_form.dart';
import 'package:ecommerce/src/widgets/social_media_container.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                Text(
                  'Register Account',
                  style: headingStyle, 
                ),
                Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.07),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.07),
                SocialMediaContainer(),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text('By continuing your confirm that you agree \nwith our Term and Condition', textAlign: TextAlign.center,)
              ],
            ),
          ),
        ));
  }
}


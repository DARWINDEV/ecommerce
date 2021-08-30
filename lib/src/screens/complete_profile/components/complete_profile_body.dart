import 'package:ecommerce/src/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/complete_profile/components/complete_profile_form.dart';
import 'package:ecommerce/src/values/constants.dart';


class CompleteProfileBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight! * 0.02),
            Text('Complete Profile', style: headingStyle,),
            Text('Complete your details or continue \nwith social media', textAlign: TextAlign.center),
            SizedBox(height: SizeConfig.screenHeight! * 0.05),
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30),),
            Text('By continuing your confirm that yoy agree \nwith our Term and Condition', textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
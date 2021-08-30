import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/sign_in/components/sign_form.dart';
import 'package:ecommerce/src/widgets/social_media_container.dart';
import 'package:ecommerce/src/widgets/new_account.dart';
import 'package:ecommerce/src/utils/size_config.dart';

class BodySignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight! * 0.04,),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08,),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.08,),
                SocialMediaContainer(),
                SizedBox(height: getProportionateScreenHeight(16),),
                NewAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

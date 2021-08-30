import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
            )),
        InkWell(
          onTap: () => Navigator.pushNamed(context, 'signUpScreen'),
          child: Text("Sign Up",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: kPrimaryColor)),
        )
      ],
    );
  }
}

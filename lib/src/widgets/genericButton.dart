import 'package:ecommerce/src/values/constants.dart';
import 'package:flutter/material.dart';
	
import 'package:ecommerce/src/utils/size_config.dart';

class GenericButton extends StatelessWidget {

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));

  GenericButton({
    Key? key,
    required this.text, this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: flatButtonStyle,
        child: Text(text!,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.white)),
        onPressed: press,
      ),
    );
  }
}
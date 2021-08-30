import 'package:flutter/material.dart';

import 'package:ecommerce/src/values/constants.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/widgets/genericButton.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FN, pin3FN, pin4FN;

  @override
  void initState() {
    super.initState();
    pin2FN = FocusNode();
    pin3FN = FocusNode();
    pin4FN = FocusNode();
  }

  @override
  void dispose() {
    pin2FN!.dispose();
    pin3FN!.dispose();
    pin4FN!.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2FN);
                  },
                )),
            SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                    focusNode: pin2FN,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                    decoration: otpInputDecoration,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin3FN);
                    })),
            SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                    focusNode: pin3FN,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin4FN);
                    })),
            SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FN,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    pin4FN!.unfocus();
                  },
                )),
          ],
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.15),
        GenericButton(text: 'Send')
        
      ],
    ));
  }
}
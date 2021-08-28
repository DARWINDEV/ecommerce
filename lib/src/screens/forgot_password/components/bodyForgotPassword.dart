import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';
import 'package:ecommerce/src/widgets/customSuffixMethod.dart';
import 'package:ecommerce/src/widgets/form_error.dart';
import 'package:ecommerce/src/widgets/genericButton.dart';
import 'package:flutter/material.dart';

class BodyForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text('Forgot Password',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(28),
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              ForgotPasswordForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixMethod(
                iconSvg: 'assets/icons/Mail.svg',
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Warnings(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          GenericButton(text: "Continue", press: (){
            if(_formKey.currentState!.validate()){
              
            }
          }),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
        ],
      ),
    );
  }
}

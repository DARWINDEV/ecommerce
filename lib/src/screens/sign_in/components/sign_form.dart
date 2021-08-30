import 'package:flutter/material.dart';

import 'package:ecommerce/src/widgets/customSuffixMethod.dart';
import 'package:ecommerce/src/widgets/genericButton.dart';
import 'package:ecommerce/src/widgets/form_error.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email, password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}){
    if(!errors.contains(error))
    setState(() {
      errors.add(error!);
    });
  }

    void removeError({String? error}){
    if(errors.contains(error))
    setState(() {
      errors.remove(error!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailTextForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          passwordTextForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Warnings(errors: errors),
          Row(children: [
            Checkbox(value: remember, activeColor: kPrimaryColor, onChanged: (value){
              setState(() {
                remember = value!;
              });
            }),
            Text("Remember me"),
            Spacer(),
            InkWell(child: Text("Forgot Password", style: TextStyle(decoration: TextDecoration.underline),),
            onTap: ()=> Navigator.pushNamed(context, 'forgotPassword'),)
          ],),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          GenericButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, 'success');
              }
            },
          )
        ],
      ),
    );
  }

  Widget passwordTextForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
          
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });

        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixMethod(
            iconSvg: 'assets/icons/Lock.svg',
          )),
      validator: (valuePass) {
        if (valuePass!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (valuePass.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
    );
  }

  Widget emailTextForm() {
    return TextFormField(
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
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
    );
  }
}

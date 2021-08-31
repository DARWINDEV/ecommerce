import 'package:flutter/material.dart';

import 'package:ecommerce/src/widgets/customSuffixMethod.dart';
import 'package:ecommerce/src/widgets/genericButton.dart';
import 'package:ecommerce/src/widgets/form_error.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  String? email, password, confirm_password;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error!);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        emailForm(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        passwordForm(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        confirmPassword(),
        Warnings(errors: errors),
        SizedBox(
          height: getProportionateScreenHeight(40),
        ),
        GenericButton(
          text: 'Continue',
          press: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, 'completeProfile');
            }
          },
        )
      ]),
    );
  }

  Widget emailForm() {
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

  Widget passwordForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixMethod(
            iconSvg: 'assets/icons/Lock.svg',
          )),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
        return null;
      },
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

  Widget confirmPassword() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Conform Password',
          hintText: 'Re-enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixMethod(
            iconSvg: 'assets/icons/Lock.svg',
          )),
      onChanged: (value) {
        if (password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
    );
  }
}

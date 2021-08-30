import 'package:flutter/material.dart';

import 'package:ecommerce/src/widgets/customSuffixMethod.dart';
import 'package:ecommerce/src/widgets/genericButton.dart';
import 'package:ecommerce/src/widgets/form_error.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? firstName, lastName, phoneNumber, address;
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
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: <Widget>[
            firstNameTextForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            lastNameTextForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            phoneNumTextForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            addressTextForm(),
            Warnings(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            GenericButton(text: 'Continue', press: (){
              if(_formKey.currentState!.validate()){

              }
            },)
          ],
        ),
      ),
    );
  }

  Widget firstNameTextForm() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue,
      decoration: InputDecoration(
        labelText: 'First name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixMethod(
          iconSvg: 'assets/icons/User.svg',
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }

        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
    );
  }

  Widget lastNameTextForm() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => phoneNumber = newValue,
      decoration: InputDecoration(
        labelText: 'Phone number',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixMethod(
          iconSvg: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  Widget phoneNumTextForm() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        labelText: 'Last name',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixMethod(
          iconSvg: 'assets/icons/Phone.svg',
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          addError(error: kPhoneNumberNullError);
        } 
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
         addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
    );
  }

  Widget addressTextForm() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => address = newValue,
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixMethod(
          iconSvg: 'assets/icons/User.svg',
        ),
      ),
       onChanged: (value) {
        if (value.isNotEmpty) {
          addError(error: kAddressNullError);
        } 
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
         addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
    );
  }
}

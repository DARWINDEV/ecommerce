import 'package:ecommerce/src/screens/sign_up/components/signUpBody.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SignUpBody(),
   );
  }
}
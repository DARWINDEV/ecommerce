import 'package:ecommerce/src/screens/forgot_password/components/bodyForgotPassword.dart';

import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: BodyForgotPassword(),
    );
  }
}

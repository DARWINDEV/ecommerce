import 'package:ecommerce/src/screens/otp/components/opt_body.dart';
import 'package:flutter/material.dart';


class OtpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OTP Verification')),
      body: OtpBody()
   );
  }
}
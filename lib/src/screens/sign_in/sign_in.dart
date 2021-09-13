import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/sign_in/components/bodySign.dart';


class SignInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign in'),),
      body: BodySignScreen()
   );
  }
}
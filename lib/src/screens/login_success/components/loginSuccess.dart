import 'package:ecommerce/src/screens/login_success/components/sucessBody.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: SizedBox(),
      title: (Text("Login Success")),
    ),
    body: SuccessBody());
  }
}

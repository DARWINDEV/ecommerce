import 'package:flutter/material.dart';
import 'package:ecommerce/src/screens/complete_profile/components/complete_profile_body.dart';


class CompleteProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up')
      ),
      body: CompleteProfileBody(),
   );
  }
}


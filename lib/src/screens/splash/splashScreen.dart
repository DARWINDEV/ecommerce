
import 'package:ecommerce/src/screens/splash/components/bodySpash.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/src/utils/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(body: BodySplash());
  }
}



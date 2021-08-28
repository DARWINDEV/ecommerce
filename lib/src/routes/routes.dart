import 'package:flutter/cupertino.dart';
import 'package:ecommerce/src/screens/login_success/components/loginSuccess.dart';

import 'package:ecommerce/src/screens/forgot_password/components/forgot_password.dart';
import 'package:ecommerce/src/screens/sign_in/components/sign_in.dart';
import 'package:ecommerce/src/screens/splash/components/splashScreen.dart';

final Map<String, WidgetBuilder> routes = {
  'splashScreen' : (BuildContext context) => SplashScreen(),
  'signInScreen' : (BuildContext context) => SignInScreen(),
  'forgotPassword' : (BuildContext context) => ForgotPasswordScreen(),
  'success' : (BuildContext context) => LoginSuccessScreen(),
};
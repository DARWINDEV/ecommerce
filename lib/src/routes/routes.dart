import 'package:flutter/cupertino.dart';

import 'package:ecommerce/src/screens/complete_profile/complete_profile.dart';
import 'package:ecommerce/src/screens/forgot_password/forgot_password.dart';
import 'package:ecommerce/src/screens/login_success/loginSuccess.dart';
import 'package:ecommerce/src/screens/home/components/home_body.dart';
import 'package:ecommerce/src/screens/splash/splashScreen.dart';
import 'package:ecommerce/src/screens/sign_up/sign_up.dart';
import 'package:ecommerce/src/screens/sign_in/sign_in.dart';
import 'package:ecommerce/src/screens/otp/otp.dart';

final Map<String, WidgetBuilder> routes = {
  'splashScreen'   : (BuildContext context) => SplashScreen(),
  'signInScreen'   : (BuildContext context) => SignInScreen(),
  'forgotPassword' : (BuildContext context) => ForgotPasswordScreen(),
  'success'        : (BuildContext context) => LoginSuccessScreen(),
  'signUpScreen'   : (BuildContext context) => SignUpScreen(),
  'completeProfile' : (BuildContext context) => CompleteProfileScreen(),
  'otp' : (BuildContext context) => OtpScreen(),
  'homePage' : (BuildContext context) => HomePage()
};
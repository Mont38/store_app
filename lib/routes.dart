import 'package:flutter/widgets.dart';
import 'screens/signup_success/login_success_screen.dart';
import '/screens/cart/cart_screen.dart';
import '/screens/complete_profile/complete_profile_screen.dart';
import '/screens/details/details_screen.dart';
import '/screens/forgot_password/forgot_password_screen.dart';
import '/components/home_screen.dart';
import '/screens/login_success/signuplogin_success_screen.dart';
import '/screens/otp/otp_screen.dart';
import '/screens/profile/profile_screen.dart';
import '/screens/sign_in/sign_in_screen.dart';
import '/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};

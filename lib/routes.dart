import 'package:flutter/widgets.dart';
import 'package:yummy/screens/onboarding/onboarding_screen.dart';
import 'package:yummy/screens/sign/forgot/forgot_password_screen.dart';
import 'package:yummy/screens/sign/in/sign_in_screen.dart';
import 'package:yummy/screens/sign/up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};

import 'package:flutter/material.dart';
import 'dimensions.dart';

const primaryColor = Color(0xFFD91A3D);
const secondaryColor = Color(0xFFF2B705);
const decorationColor = Color(0xFFBBE7FF);
const boxColor = Color(0xFFEDEDED);
const textColor = Color(0xFF757575);
const titleColor = Color(0xFF687083);
const animationDuration = Duration(milliseconds: 200);

final headStyle = TextStyle(
  color: Colors.black,
  fontSize: getProportionateScreenWidth(16),
  fontWeight: FontWeight.bold,
  height: 1.5,
);

const String connectionMsg = "Please check the Internet connection.";
const String labelPassword = "Password";
const String labelEmail = "Email";
const String signIn = "Sign in";
const String send = "Send";
const String signUp = "Sign up";
const String continueButton = "Continue";
const String signInTitle = "Welcome back";
const String signInDescription =
    "Sign in with your email and password\nor continue with social media.";
const String dontHaveAnAccount = "Don't have an account? ";
const String signUpDescription =
    "Complete your details or continue\nwith social media.";
const String signUpTitle = "Let's get started";
const String termsOfService =
    "By continuing, you confirm that\nyou accept our Terms of Service.";
const String forgotYourPassword = "Forgot your password? ";
const String getHelpSigningIn = "Get help signing in.";
const String hintTextEmail = "Enter your email";
const String hintTextPassword = "Enter your password";
const String forgotPassword = "Forgot password";
const String forgotPasswordTitle = "Find your account";
const String forgotPasswordDescription =
    "Please enter your email and will send\nyou a link to return to your account.";
const String invalidEmailError = "Please enter valid email";
const String shortPassError =
    "Please enter password longer than seven characters";

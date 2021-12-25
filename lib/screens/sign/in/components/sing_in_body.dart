import 'package:flutter/material.dart';
import 'package:yummy/constants.dart';
import 'package:yummy/dimensions.dart';
import 'package:yummy/screens/sign/in/components/sign_in_content.dart';
import 'package:yummy/screens/sign/in/components/social_panel.dart';
import 'package:yummy/screens/sign/up/sign_up_screen.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                signInTitle,
                style: headStyle,
              ),
              const Text(
                signInDescription,
                textAlign: TextAlign.center,
              ),
              const SignForm(),
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SocialPanel(
                      icon: "assets/icons/google.svg",
                      url: "https://accounts.google.com/"),
                  SocialPanel(
                      icon: "assets/icons/facebook.svg",
                      url: "https://www.facebook.com/"),
                  SocialPanel(
                      icon: "assets/icons/twitter.svg",
                      url: "https://twitter.com/"),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              const SignUpText(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  const SignUpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dontHaveAnAccount,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(9),
          ),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, SignUpScreen.routeName),
          child: Text(
            signUp,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(9),
              color: secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

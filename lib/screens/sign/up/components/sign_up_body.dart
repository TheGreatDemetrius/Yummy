import 'package:flutter/material.dart';
import 'package:yummy/screens/sign/in/components/sign_in_content.dart';
import 'package:yummy/screens/sign/in/components/social_panel.dart';
import '../../../../constants.dart';
import '../../../../dimensions.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

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
                signUpTitle,
                style: headStyle,
              ),
              const Text(
                signUpDescription,
                textAlign: TextAlign.center,
              ),
              SignForm(),
              SizedBox(
                height: getProportionateScreenHeight(60),
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
              const Text(
                termsOfService,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

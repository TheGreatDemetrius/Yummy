import 'package:flutter/material.dart';
import 'package:yummy/dimensions.dart';

import 'componets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = "/onboarding";

  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return const Scaffold(
      body: OnboardingBody(),
    );
  }
}

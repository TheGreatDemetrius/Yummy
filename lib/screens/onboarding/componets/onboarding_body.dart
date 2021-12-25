import 'package:flutter/material.dart';
import 'package:yummy/screens/components/default_button.dart';
import 'package:yummy/screens/onboarding/componets/onboarding_content.dart';
import 'package:yummy/screens/sign/in/sign_in_screen.dart';
import '../../../constants.dart';
import '../../../dimensions.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  _OnboardingBodyState createState() => _OnboardingBodyState();
}

int _currentPage = 0;

class _OnboardingBodyState extends State<OnboardingBody> {
  List<Map<String, String>> onboardData = [
    {
      "title": "Select a food",
      "description":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam "
              "nonummy nibh euismod tincidunt. Lorem ipsum dolor sit amet "
              "consectetuer.",
      "image": "assets/images/onboard1.svg"
    },
    {
      "title": "Enter your address",
      "description":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam "
              "nonummy nibh euismod tincidunt. Lorem ipsum dolor sit amet "
              "consectetuer.",
      "image": "assets/images/onboard2.svg"
    },
    {
      "title": "Fast delivery",
      "description":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam "
              "nonummy nibh euismod tincidunt. Lorem ipsum dolor sit amet "
              "consectetuer.",
      "image": "assets/images/onboard3.svg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemCount: onboardData.length,
                    itemBuilder: (context, index) => OnboardContent(
                        title: onboardData[index]["title"].toString(),
                        description:
                            onboardData[index]["description"].toString(),
                        image: onboardData[index]["image"].toString()))),
            SizedBox(height: getProportionateScreenHeight(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardData.length,
                (index) => buildDot(index: index),
              ),
            ),
            DefaultButton(
                text: continueButton,
                click: () =>
                    Navigator.popAndPushNamed(context, SignInScreen.routeName)),
          ],
        ),
      ),
    );
  }
}

AnimatedContainer buildDot({required int index}) {
  return AnimatedContainer(
    duration: animationDuration,
    margin: const EdgeInsets.only(right: 5),
    height: 6,
    width: _currentPage == index ? 20 : 6,
    decoration: BoxDecoration(
        color: _currentPage == index ? primaryColor : decorationColor,
        borderRadius: BorderRadius.circular(3)),
  );
}

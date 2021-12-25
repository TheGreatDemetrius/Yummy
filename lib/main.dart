import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yummy/constants.dart';
import 'package:yummy/routes.dart';
import 'package:yummy/screens/onboarding/onboarding_screen.dart';

main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Nunito",
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: textColor),
          bodyText2: TextStyle(color: textColor),
        ),
        primarySwatch: Colors.amber,
      ),
      initialRoute:
           OnboardingScreen.routeName,
      routes: routes,
    );
  }
}

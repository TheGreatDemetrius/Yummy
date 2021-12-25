import 'package:flutter/material.dart';
import 'package:yummy/constants.dart';
import 'components/sing_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(signIn),
        centerTitle: true,
      ),
      body: const SignInBody(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(forgotPassword),
        centerTitle: true,
      ),
      body: const ForgotBody(),
    );
  }
}

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:yummy/screens/components/default_button.dart';
import 'package:yummy/screens/sign/forgot/forgot_password_screen.dart';
import '../../../../constants.dart';
import '../../../../dimensions.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(16)),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            TextFormField(
              onChanged: (value) {
                if (EmailValidator.validate(value) &&
                    errors.contains(invalidEmailError)) {
                  setState(() {
                    errors.remove(invalidEmailError);
                  });
                }
              },
              validator: (value) {
                if (!EmailValidator.validate(value!) &&
                    !errors.contains(invalidEmailError)) {
                  setState(() {
                    errors.add(invalidEmailError);
                  });
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: labelEmail,
                hintText: hintTextEmail,
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            TextFormField(
              onChanged: (value) {
                if (value.length > 7 && errors.contains(shortPassError)) {
                  setState(() {
                    errors.remove(shortPassError);
                  });
                }
              },
              validator: (value) {
                if (value!.length < 8 && !errors.contains(shortPassError)) {
                  setState(() {
                    errors.add(shortPassError);
                  });
                }
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: labelPassword,
                hintText: hintTextPassword,
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.lock_outlined),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            Errors(
              errors: errors,
            ),
            DefaultButton(
                text: signIn,
                click: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _showToast(context);
                  }
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  forgotYourPassword,
                ),
                GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: const Text(
                    getHelpSigningIn,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    const SnackBar(
      content: Text(connectionMsg),
    ),
  );
}

class Errors extends StatelessWidget {
  final List<String> errors;

  const Errors({
    Key? key,
    required this.errors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }
}

Row formErrorText({required String error}) {
  return Row(
    children: [
      Icon(
        Icons.error_outline,
        color: primaryColor,
        size: getProportionateScreenWidth(8),
      ),
      SizedBox(width: getProportionateScreenWidth(4)),
      Text(error),
    ],
  );
}

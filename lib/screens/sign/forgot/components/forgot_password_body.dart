import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:yummy/dimensions.dart';
import 'package:yummy/screens/components/default_button.dart';
import 'package:yummy/screens/sign/in/components/sign_in_content.dart';
import 'package:yummy/screens/sign/in/components/sing_in_body.dart';
import '../../../../constants.dart';

class ForgotBody extends StatelessWidget {
  const ForgotBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(16)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                forgotPasswordTitle,
                style: headStyle,
              ),
              const Text(
                forgotPasswordDescription,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
              ForgotForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotForm extends StatefulWidget {
  const ForgotForm({Key? key}) : super(key: key);

  @override
  _ForgotFormState createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          Errors(errors: errors),
          //SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
              text: send,
              click: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
                _showToast(context);
              }),
          const SignUpText(),
        ],
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

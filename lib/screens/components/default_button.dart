import 'package:flutter/material.dart';
import '../../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.text, required this.click})
      : super(key: key);
  final String text;
  final VoidCallback click;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            minimumSize: const Size(300, 50),
            primary: primaryColor,
            textStyle: const TextStyle(fontSize: 16)),
        onPressed: click,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

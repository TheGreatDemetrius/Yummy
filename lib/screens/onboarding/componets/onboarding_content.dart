import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yummy/constants.dart';

import '../../../dimensions.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent(
      {Key? key,
      required this.title,
      required this.description,
      required this.image})
      : super(key: key);
  final String title, description, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SvgPicture.asset(
        image,
        alignment: Alignment.center,
        width: getProportionateScreenWidth(255),
      ),
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: getProportionateScreenWidth(14),
          color: titleColor,
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(8),
          ),
        ),
      ),
    ]);
  }
}

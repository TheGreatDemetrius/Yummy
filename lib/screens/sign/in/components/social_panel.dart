import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../constants.dart';
import '../../../../dimensions.dart';

class SocialPanel extends StatelessWidget {
  const SocialPanel({Key? key, required this.icon, required this.url})
      : super(key: key);
  final String icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchURL(url);
      },
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(4)),
        height: getProportionateScreenHeight(45),
        width: getProportionateScreenWidth(45),
        decoration: const BoxDecoration(color: boxColor, shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

void launchURL(String url) async {
  if (!await launch(url, forceWebView: true)) throw "Could not launch $url";
}

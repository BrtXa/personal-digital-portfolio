import 'package:digital_portfolio/common/image_directory.dart';
import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/common/texts.dart';
import 'package:digital_portfolio/common/website_uri.dart';
import 'package:digital_portfolio/view/components/image_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// The footer of the app is shared by all pages. It contains
// a row storing a personal flag and a column storing the
// copyright notice and imageButon(s) for social media links.
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 100 / 720,
      color: myColors[footerBlue],
      child: Row(
        children: <Widget>[
          SizedBox(width: size.width * 60 / 1280, height: 0),
          SizedBox(
            width: 75,
            height: 50,
            child: SvgPicture.asset(
              CommonIconDirectory.iconFlagFooter,
              width: 75,
              height: 50,
            ),
          ),
          const Spacer(flex: 1),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                CommonText.copyrightNotice,
                style: TextStyle(
                  color: myColors[textGrey]!,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: size.height * 5 / 720),
              Row(
                children: <Widget>[
                  const ImageButton(
                    imageUrl: CommonIconDirectory.gmailFooter,
                    widthRatio: 15 / 1280,
                    heightRatio: 15 / 720,
                    uri: CommonUri.email,
                  ),
                  SizedBox(width: size.width * 20 / 1280),
                  const ImageButton(
                    imageUrl: CommonIconDirectory.linkedinFooter,
                    widthRatio: 15 / 1280,
                    heightRatio: 15 / 720,
                    uri: CommonUri.linkedIn,
                  ),
                  SizedBox(width: size.width * 20 / 1280),
                  const ImageButton(
                    imageUrl: CommonIconDirectory.githubFooter,
                    widthRatio: 15 / 1280,
                    heightRatio: 15 / 720,
                    uri: CommonUri.gitHub,
                  ),
                  SizedBox(width: size.width * 20 / 1280),
                  const ImageButton(
                    imageUrl: CommonIconDirectory.facebookFooter,
                    widthRatio: 15 / 1280,
                    heightRatio: 15 / 720,
                    uri: CommonUri.facebook,
                  ),
                  SizedBox(width: size.width * 5 / 1280),
                ],
              ),
            ],
          ),
          SizedBox(width: size.width * 45 / 1280, height: 0),
        ],
      ),
    );
  }
}

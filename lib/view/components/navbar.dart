import 'package:digital_portfolio/common/image_directory.dart';
import 'package:digital_portfolio/controller/routes/app_routes.dart';
import 'package:digital_portfolio/view/components/image_button.dart';
import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/view/components/navbar_rounded_button.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1,
      height: size.height * 100 / 720,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(width: size.width * 60 / 1280, height: 0),
          const ImageButton(
            imageUrl: CommonIconDirectory.iconNavbarRoundel,
            widthRatio: 75 / 1280,
            heightRatio: 75 / 720,
            uri: Routes.landingPage,
          ),
          const Spacer(flex: 1),
          // SizedBox(width: size.width * 605 / 1280, height: 0),
          NavbarRoundedButton(
            title: "Works",
            textColor: myColors[textGrey]!,
            uri: Routes.worksPage,
          ),
          SizedBox(width: size.width * 50 / 1280, height: 0),
          NavbarRoundedButton(
            title: "Education",
            textColor: myColors[textGrey]!,
            uri: Routes.educationsPage,
          ),
          SizedBox(width: size.width * 50 / 1280, height: 0),
          NavbarRoundedButton(
            title: "Contacts",
            textColor: myColors[textGrey]!,
            uri: Routes.underConstruction,
          ),
          SizedBox(width: size.width * 25 / 1280, height: 0),
        ],
      ),
    );
  }
}

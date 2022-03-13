import 'package:digital_portfolio/view/pages/landing/components/landing_section_body.dart';
import 'package:flutter/material.dart';

// The LandingSection is a container painted with the background image
// stored in assets and has a column that illustrates contents as a
// child.
class LandingSection extends StatelessWidget {
  const LandingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 620 / 720,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("../assets/images/background1.png"),
        ),
      ),
      child: const LandingSectionBody(),
    );
  }
}

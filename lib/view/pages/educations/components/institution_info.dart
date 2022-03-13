import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/common/texts.dart';
import 'package:digital_portfolio/view/components/rounded_button.dart';
import 'package:flutter/material.dart';

class InstituitionInfo extends StatelessWidget {
  final String imageBg, logoUrl, instituitionName, majorName, uri;
  final Color buttonColor;
  const InstituitionInfo({
    Key? key,
    required this.imageBg,
    required this.logoUrl,
    required this.instituitionName,
    required this.majorName,
    required this.buttonColor,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 620 / 720,
      child: Stack(
        children: <Widget>[
          // The container holding the background graphic for decoration.
          Positioned(
            top: size.height * 60 / 620,
            left: size.width * 60 / 1280,
            child: Container(
              width: size.width * 500 / 1280,
              height: size.height * 500 / 720,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageBg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // The white container with shadow placed above the background
          // graphic, which holding informations about education instituitions.
          Positioned(
            top: size.height * 160 / 620,
            left: size.width * 105 / 1280,
            child: Container(
              width: size.width * 1100 / 1280,
              height: size.height * 300 / 720,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: myColors[blackShadow]!,
                    offset: const Offset(0, 4),
                    blurRadius: 30,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: size.width * 40 / 1280),
                  // The instituition logo.
                  InstituitionLogo(
                    logoUrl: logoUrl,
                  ),
                  SizedBox(width: size.width * 40 / 1280),
                  // The information about the instituition.
                  InstituitionDescription(
                    instituitionName: instituitionName,
                    majorName: majorName,
                    buttonColor: buttonColor,
                    uri: uri,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// This is the small square box holding the logo of
// instituition.
class InstituitionLogo extends StatelessWidget {
  final String logoUrl;
  const InstituitionLogo({
    Key? key,
    required this.logoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // Give constant number to preserve the squared shape
      // when the screen is shrinked.
      width: size.width * 150 / 1280,
      height: size.width * 150 / 1280,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: myColors[blackShadow]!,
            offset: const Offset(0, 0),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: SizedBox(
          width: size.width * 75 / 1280,
          height: size.height * 110 / 620,
          child: Image.asset(logoUrl),
        ),
      ),
    );
  }
}

// The institution description, which shows texts about the
// institution and the button to the official website of that
// instituition.
class InstituitionDescription extends StatelessWidget {
  final String instituitionName, majorName, uri;
  final Color buttonColor;
  const InstituitionDescription({
    Key? key,
    required this.instituitionName,
    required this.majorName,
    required this.buttonColor,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            instituitionName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            majorName,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: myColors[textGrey],
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: size.height * 5 / 620),
          RoundedButton(
            title: CommonText.instituitionButton,
            textColor: buttonColor,
            buttonColor: Colors.white,
            borderColor: buttonColor,
            fontSize: 20,
            uri: uri,
          )
        ],
      ),
    );
  }
}

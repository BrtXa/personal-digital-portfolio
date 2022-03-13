import 'package:digital_portfolio/common/image_directory.dart';
import 'package:digital_portfolio/common/palette.dart';
import 'package:flutter/material.dart';

class CertificatesList extends StatelessWidget {
  const CertificatesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 620 / 720,
      child: Row(
        children: <Widget>[
          SizedBox(width: size.width * 65 / 1280),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 65 / 720),
              Text(
                "Certificates",
                style: TextStyle(
                  color: myColors[textGrey],
                  fontSize: 60,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: size.height * 60 / 720),
              Row(
                children: <Widget>[
                  const CertificatesLogo(
                      logoUrl: CommonImageDirectory.imageIelts),
                  SizedBox(width: size.width * 30 / 1280),
                  const CertificatesLogo(
                      logoUrl: CommonImageDirectory.imageMos),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// This is the big square box holding the logo of
// certificates.
class CertificatesLogo extends StatelessWidget {
  final String logoUrl;
  const CertificatesLogo({
    Key? key,
    required this.logoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // Give constant number to preserve the squared shape
      // when the screen is shrinked.
      width: size.width * 300 / 1280,
      height: size.width * 300 / 1280,
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
          width: size.width * 250 / 1280,
          height: size.height * 160 / 620,
          child: Image.asset(logoUrl),
        ),
      ),
    );
  }
}

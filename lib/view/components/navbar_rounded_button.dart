// The RoundedTextButton is a rounded button appears on
// the NavBar and below the texts in the landing page.
// It is shared by most of the screen.
import 'package:digital_portfolio/common/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class NavbarRoundedButton extends StatelessWidget {
  final String title, uri;
  final Color textColor;
  const NavbarRoundedButton({
    Key? key,
    required this.title,
    required this.textColor,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(uri),
      builder: (context, followLink) => ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: TextButton(
          onPressed: followLink,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            primary: myColors[subBlue],
          ),
        ),
      ),
    );
  }
}

// The rounded button in the landing page, it shares many
// similarities with buttons on the NavBar.
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class RoundedButton extends StatelessWidget {
  final String title, uri;
  final Color textColor, buttonColor, borderColor;
  final double fontSize;
  const RoundedButton({
    Key? key,
    required this.title,
    required this.textColor,
    required this.buttonColor,
    required this.borderColor,
    required this.fontSize,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Link(
      target: LinkTarget.blank,
      uri: Uri.parse(uri),
      builder: (context, followLink) => TextButton(
        onPressed: followLink,
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
          backgroundColor: buttonColor,
          side: BorderSide(
            color: borderColor,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
        ),
      ),
    );
  }
}

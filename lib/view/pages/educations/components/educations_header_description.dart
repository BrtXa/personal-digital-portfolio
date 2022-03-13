import 'package:digital_portfolio/common/palette.dart';
import 'package:flutter/material.dart';

// This is the small texts under the header.
class EducationsHeaderDescription extends StatelessWidget {
  final String text;
  const EducationsHeaderDescription({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 300 / 720,
      color: myColors[backgroundBlue],
      // The text should be centered and able to shrink when overflow,
      // so we put it into a row with two SizedBox(s).
      child: Row(
        children: [
          SizedBox(width: size.width * 190 / 1280),
          Flexible(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(width: size.width * 190 / 1280),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class ImageButton extends StatelessWidget {
  final String imageUrl, uri;
  final double widthRatio, heightRatio;

  const ImageButton({
    Key? key,
    required this.imageUrl,
    required this.widthRatio,
    required this.heightRatio,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Link(
      target: LinkTarget.blank,
      uri: Uri.parse(uri),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: SvgPicture.asset(
          imageUrl,
          width: size.width * widthRatio,
          height: size.height * heightRatio,
        ),
      ),
    );
  }
}

import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/view/pages/works/components/works_header_body.dart';
import 'package:flutter/material.dart';

class WorksHeader extends StatelessWidget {
  const WorksHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 620 / 720,
      color: myColors[backgroundBlue],
      child: const WorksHeaderBody(),
    );
  }
}

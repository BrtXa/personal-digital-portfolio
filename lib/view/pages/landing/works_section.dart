import 'package:digital_portfolio/view/pages/landing/components/works_section_body.dart';
import 'package:flutter/material.dart';

// The EducationSection is the second section in the landing
// page, it is a blank container with a body.
class WorksSection extends StatelessWidget {
  const WorksSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
          maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 620 / 720,
      child: const WorksSectionBody(),
    );
  }
}

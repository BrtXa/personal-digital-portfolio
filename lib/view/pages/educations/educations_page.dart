import 'package:digital_portfolio/common/image_directory.dart';
import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/common/texts.dart';
import 'package:digital_portfolio/common/website_uri.dart';
import 'package:digital_portfolio/view/components/footer.dart';
import 'package:digital_portfolio/view/components/navbar.dart';
import 'package:digital_portfolio/view/pages/educations/components/certificates_list.dart';
import 'package:digital_portfolio/view/pages/educations/components/educations_header_body.dart';
import 'package:digital_portfolio/view/pages/educations/components/educations_header_description.dart';
import 'package:digital_portfolio/view/pages/educations/components/institution_info.dart';
import 'package:digital_portfolio/view/pages/educations/educations_header.dart';
import 'package:flutter/material.dart';

// The EducationsPage widget shares the same structure with
// the WorksPage widget.
class EducationsPage extends StatelessWidget {
  const EducationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        // The page has an appBar, shared with all other pages.
        appBar: AppBar(
          // I still can't think of a method to creater a custom floating
          // appbar. Therefore I implement the built in AppBar widget and
          // utilized its toolbarHeight and flexibleSpace properties.
          automaticallyImplyLeading: false,
          toolbarHeight: size.height * 100 / 720,
          flexibleSpace: const NavBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            // The child of this Scaffold is a Column containing sections
            // of the page.
            children: <Widget>[
              const EducationsHeader(),
              const EducationsHeaderDescription(
                text: CommonText.educationDescription,
              ),
              InstituitionInfo(
                imageBg: CommonImageDirectory.imageCollegeBg,
                logoUrl: CommonImageDirectory.imageCollegeLogo,
                instituitionName: CommonText.collegeName,
                majorName: CommonText.collegeMajor,
                buttonColor: myColors[mainYellow]!,
                uri: CommonUri.college,
              ),
              InstituitionInfo(
                imageBg: CommonImageDirectory.imageHighSchoolBg,
                logoUrl: CommonImageDirectory.imageHighSchoolLogo,
                instituitionName: CommonText.highSchoolName,
                majorName: CommonText.highSchoolMajor,
                buttonColor: myColors[mainBlue]!,
                uri: CommonUri.highSchool,
              ),
              const CertificatesList(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

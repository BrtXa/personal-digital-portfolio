import 'package:digital_portfolio/common/image_directory.dart';
import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/common/texts.dart';
import 'package:digital_portfolio/common/website_uri.dart';
import 'package:digital_portfolio/controller/routes/app_routes.dart';
import 'package:digital_portfolio/view/components/footer.dart';
import 'package:digital_portfolio/view/components/navbar.dart';
import 'package:digital_portfolio/view/pages/works/components/works_header_description.dart';
import 'package:digital_portfolio/view/pages/works/components/works_info.dart';
import 'package:digital_portfolio/view/pages/works/works_header.dart';
import 'package:flutter/material.dart';

// The WorkPage class is a scrollable screen with a header and
// multiple sections shows different projects.
class WorksPage extends StatelessWidget {
  const WorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Return SafeArea() to avoid overflow.
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
      // Since the two sections have larger size than the initial
      // screen, set the screen to be scrollable.
      body: SingleChildScrollView(
        child: Column(
          // The child of this Scaffold is a Column containing sections
          // of the page.
          children: <Widget>[
            // The header of the page.
            const WorksHeader(),
            // The small description.
            const WorksHeaderDescription(
              text: CommonText.worksDescription,
            ),
            // First project.
            WorksInfo(
              imageUrl: CommonImageDirectory.imageProject1,
              backgroundColor: myColors[mainYellow]!,
              title: CommonText.project1,
              subTitle: CommonText.project1Des,
              buttonTitle: CommonText.codeButton,
              uri: 'https://github.com/',
            ),
            // Second project.
            WorksInfo(
              imageUrl: CommonImageDirectory.imageProject2,
              backgroundColor: myColors[mainBlue]!,
              title: CommonText.project2,
              subTitle: CommonText.project2Des,
              buttonTitle: CommonText.codeButton,
              uri: CommonUri.pippipApp,
            ),
            // Third project.
            WorksInfo(
              imageUrl: CommonImageDirectory.flagPattern,
              backgroundColor: myColors[mainGreen]!,
              title: CommonText.project3,
              subTitle: CommonText.project3Des,
              buttonTitle: CommonText.designButton,
              uri: Routes.underConstruction,
            ),
            // Page footer.
            const Footer(),
          ],
        ),
      ),
    ));
  }
}

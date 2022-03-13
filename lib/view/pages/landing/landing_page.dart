// Landing page will be the first page to appears when the
// system is opened.
import 'package:digital_portfolio/view/components/footer.dart';
import 'package:digital_portfolio/view/components/navbar.dart';
import 'package:digital_portfolio/view/pages/landing/education_section.dart';
import 'package:digital_portfolio/view/pages/landing/landing_section.dart';
import 'package:digital_portfolio/view/pages/landing/works_section.dart';
import 'package:flutter/material.dart';

// The LandingPage class is a scrollable screen with three sections,
// the "landing" section, the education and the works section.
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Return SafeArea() to avoid overflow.
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      // The landing page has an appBar, shared with all other pages.
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
          children: const <Widget>[
            LandingSection(),
            WorksSection(),
            EducationSection(),
            Footer(),
          ],
        ),
      ),
    ));
  }
}

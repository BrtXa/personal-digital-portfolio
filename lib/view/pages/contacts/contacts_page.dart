import 'package:digital_portfolio/common/image_directory.dart';
import 'package:digital_portfolio/common/texts.dart';
import 'package:digital_portfolio/view/components/footer.dart';
import 'package:digital_portfolio/view/components/navbar.dart';
import 'package:flutter/material.dart';

// The ContactPage class is a screen under construction.
class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

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
          children: <Widget>[
            Container(
              constraints:
                  BoxConstraints(maxWidth: size.width, maxHeight: size.height),
              width: size.width,
              height: size.height * 620 / 720,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    CommonText.underConstruction,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    height: size.height * 0.6,
                    child: Image.asset(
                        CommonImageDirectory.imageUnderConstruction),
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    ));
  }
}

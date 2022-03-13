import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/common/texts.dart';
import 'package:digital_portfolio/controller/routes/app_routes.dart';
import 'package:digital_portfolio/view/components/rounded_button.dart';
import 'package:flutter/material.dart';

// This is the body of the EducationSection. It has some texts
// and an image.
class WorksSectionBody extends StatelessWidget {
  const WorksSectionBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // The body is divided into a row with two childrens, one
    // child store the image and the other one store texts.
    // There are also some SizedBox in between to create spaces.
    return Row(
      children: <Widget>[
        SizedBox(width: size.width * 150 / 1280, height: 0),
        // The image is wrapped in a SizedBox to maintain the
        // desirable size.
        SizedBox(
          width: size.width * 500 / 1280,
          height: size.height * 388 / 620,
          child: Image.asset("assets/images/worksSection.png"),
        ),
        SizedBox(width: size.width * 50 / 1280, height: 0),
        // The texts of this section is placed in a column. However,
        // in order to prevent tests disappearing when reduce screen
        // size, the entire column is wrapped in a Flexible widget.
        // With this method, when the texts (in the column) is
        //overflowed, it will automatically make a new line.
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 0, height: size.height * 130 / 620),
              Text(
                CommonText.neofile,
                style: TextStyle(
                  color: myColors[subBlue]!,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                CommonText.neofileWith,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                CommonText.neofileDes,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              SizedBox(width: 0, height: size.height * 10 / 620),
              RoundedButton(
                title: "Learn more",
                // onPressed: () {
                //   Navigator.pushNamed(
                //     context,
                //     worksPage,
                //   );
                // },
                textColor: myColors[mainBlue]!,
                buttonColor: Colors.white,
                borderColor: myColors[mainBlue]!,
                fontSize: 25,
                uri: '/works',
              ),
            ],
          ),
        ),
        SizedBox(width: size.width * 150 / 1280, height: 0),
      ],
    );
  }
}

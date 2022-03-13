import 'package:digital_portfolio/common/image_directory.dart';
import 'package:digital_portfolio/common/texts.dart';
import 'package:flutter/material.dart';

// This is the body of the EducationSection. It has some texts
// and an image.
class WorksHeaderBody extends StatelessWidget {
  const WorksHeaderBody({
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
        SizedBox(width: size.width * 210 / 1280, height: 0),
        // The texts of this section is placed in a column. However,
        // in order to prevent tests disappearing when reduce screen
        // size, the entire column is wrapped in a Flexible widget.
        // With this method, when the texts (in the column) is
        //overflowed, it will automatically make a new line.
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                CommonText.worksHeader,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 65,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: size.width * 50 / 1280, height: 0),
        // The image is wrapped in a SizedBox to maintain the
        // desirable size.
        SizedBox(
          width: size.width * 500 / 1280,
          height: size.height * 388 / 620,
          child: Image.asset(CommonImageDirectory.imageWorksHeader),
        ),
        SizedBox(width: size.width * 150 / 1280, height: 0),
      ],
    );
  }
}

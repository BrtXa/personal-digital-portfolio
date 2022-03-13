// Landing page body hold all the contents placed under the
// NavBar in the LandingPage.
import 'package:digital_portfolio/common/palette.dart';
import 'package:digital_portfolio/view/components/rounded_button.dart';
import 'package:flutter/material.dart';

class LandingSectionBody extends StatelessWidget {
  const LandingSectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(width: size.width * 95 / 1280, height: 0),
        // The texts of this section is placed in a column. However,
        // in order to prevent tests disappearing when reduce screen
        // size, the entire column is wrapped in a Flexible widget.
        // With this method, when the texts (in the column) is
        //overflowed, it will automatically make a new line.
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 0, height: size.height * 205 / 720),
            const Text(
              "Pleased to meet you, I am",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Hoang Minh Dinh",
              style: TextStyle(
                color: myColors[mainYellow],
                fontSize: 70,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 0, height: size.height * 20 / 720),
            RoundedButton(
              title: "About me",
              textColor: myColors[subBlue]!,
              borderColor: myColors[subBlue]!,
              buttonColor: myColors[mainBlue]!,
              fontSize: 35,
              uri: '/landing',
            ),
          ],
        ),
      ],
    );
  }
}

// The WorksInfo widget is the entire section that show preview
// images and introductory informations about a specific project.
import 'package:digital_portfolio/view/components/rounded_button.dart';
import 'package:flutter/material.dart';

class WorksInfo extends StatelessWidget {
  final String imageUrl, uri;
  final Color backgroundColor;
  final String title, subTitle, buttonTitle;
  const WorksInfo({
    Key? key,
    required this.imageUrl,
    required this.backgroundColor,
    required this.title,
    required this.subTitle,
    required this.buttonTitle,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      width: size.width,
      height: size.height * 620 / 720,
      // Since there are only one widget in the container, simply
      // wrap it with Center.
      child: Center(
        child: Container(
          constraints:
              BoxConstraints(maxWidth: size.width, maxHeight: size.height),
          width: size.width * 1150 / 1280,
          height: size.height * 420 / 720,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            children: <Widget>[
              // This is the left-hand side of the project preview, which
              // is an image of that project.
              Container(
                width: size.width * 575 / 1280,
                height: size.height * 520 / 720,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // This is the right-hand side of the project preview, which
              // is a colored area with some texts and widgets.
              Container(
                width: size.width * 575 / 1280,
                height: size.height * 520 / 720,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: backgroundColor,
                ),
                // This is the Column that stores texts about the
                // projects and the button to source codes/detailed
                // information.
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      subTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: size.height * 30 / 720),
                    RoundedButton(
                      title: buttonTitle,
                      textColor: backgroundColor,
                      buttonColor: Colors.white,
                      borderColor: Colors.white,
                      fontSize: 20,
                      uri: uri,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

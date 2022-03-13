// This is the PageRouteBuilder, it is used for create page
// transisition animation. Basically, it will first show animation
// of the destination widget, after the animation is completed, it will
// show the widget itself.
import 'package:flutter/material.dart';

class FastPageRoute extends PageRouteBuilder {
  final Widget widget;

  FastPageRoute({
    // The class receives a widget as an argument, the
    // widget passed in will be the destination one.
    required this.widget,
  }) : super(
          // transitionDuration set the animation duration.
          transitionDuration: const Duration(milliseconds: 10),
          // transitionBuilder returns the animation (how the 
          // animation will looks like).
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          // The pageBuilder returns the destination widget.
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return widget;
          },
        );
}

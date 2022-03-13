// This is the named route generator, used to avoid code repetition.
import 'package:digital_portfolio/controller/routes/app_routes.dart';
import 'package:digital_portfolio/controller/routes/fast_page_route.dart';
import 'package:digital_portfolio/view/pages/contacts/contacts_page.dart';
import 'package:digital_portfolio/view/pages/educations/educations_page.dart';
import 'package:digital_portfolio/view/pages/landing/landing_page.dart';
import 'package:digital_portfolio/view/pages/works/works_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.landingPage:
      return FastPageRoute(widget: const LandingPage());
    case Routes.worksPage:
      return FastPageRoute(widget: const WorksPage());
    case Routes.educationsPage:
      return FastPageRoute(widget: const EducationsPage());
    case Routes.underConstruction:
      return FastPageRoute(widget: const ContactsPage());
    default:
      return MaterialPageRoute(
          builder: (context) => Text("404, not found ${settings.name}"));
  }
}

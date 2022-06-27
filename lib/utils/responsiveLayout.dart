import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  static const double SMALL = 320;
  static const double MEDIUM = 468;
  static const double LARGE = firebase;

  const ResponsiveLayout(
      {Key? key,
        required this.largeScreen,
        required this.mediumScreen,
        required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < SMALL;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > MEDIUM &&
        MediaQuery.of(context).size.width < LARGE;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > LARGE;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > LARGE) {
          return largeScreen;
        } else if (constraints.maxWidth < LARGE && constraints.maxWidth > MEDIUM) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
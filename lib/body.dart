import 'package:droppingbuy/large.dart';
import 'package:droppingbuy/medium.dart';
import 'package:droppingbuy/small.dart';
import 'package:droppingbuy/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: LargeChild(),
      mediumScreen: MediumChild(),
      smallScreen: SmallChild(),
    );
  }
}
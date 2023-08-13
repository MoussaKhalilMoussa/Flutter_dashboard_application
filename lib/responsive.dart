import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  // may be I will need some customization

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // if our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width is less than 1100 and more than 850 consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // or less than that we called it mobile
    else {
      return mobile;
    }
  }
}

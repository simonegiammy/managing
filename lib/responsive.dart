import 'package:flutter/material.dart';

double width = 0;
double height = 0;

class ResponsiveLayout extends StatelessWidget {
  final mobileScaffold;
  final tabletScaffold;
  final desktopScaffold;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1000) {
          return tabletScaffold;
        }
        return desktopScaffold;
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:managing/provider.dart';
import 'package:provider/provider.dart';

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
    var appProvider = Provider.of<AppProvider>(context, listen: false);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          appProvider.setCurrentLayout("mobile");
          return mobileScaffold;
        } else if (constraints.maxWidth < 1000) {
          appProvider.setCurrentLayout("tablet");

          return tabletScaffold;
        }
        appProvider.setCurrentLayout("desktop");

        return desktopScaffold;
      },
    );
  }
}

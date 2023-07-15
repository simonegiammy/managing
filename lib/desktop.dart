import 'package:flutter/material.dart';
import 'package:managing/Screens/dashboard.dart';
import 'package:managing/widget.dart';

var selectedWidget = DashboardPage();

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff333333),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xff333333),
          ),
          Row(children: [MyDrawer(desktop: true), selectedWidget])
        ],
      ),
    );
  }
}

//TODO: Implementa provider per il cambio di schermate

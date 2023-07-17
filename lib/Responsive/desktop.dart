import 'package:flutter/material.dart';
import 'package:managing/Screens/dashboard.dart';
import 'package:managing/provider.dart';
import 'package:managing/styles.dart';
import 'package:managing/widget.dart';
import 'package:provider/provider.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biancosporco,
      appBar: AppBar(
        backgroundColor: biancosporco,
      ),
      body: Row(
        children: [
          MyDrawer(desktop: true),
          Expanded(
            child: Consumer<AppProvider>(
              builder: (context, appProvider, _) {
                return appProvider
                    .currentWidget; // Mostra il widget corrispondente nel body
              },
            ),
          )
        ],
      ),
    );
  }
}

//TODO: Implementa provider per il cambio di schermate

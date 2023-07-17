import 'package:flutter/material.dart';
import 'package:managing/Screens/dashboard.dart';
import 'package:managing/provider.dart';
import 'package:managing/styles.dart';
import 'package:managing/widget.dart';
import 'package:provider/provider.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biancosporco,
      appBar: AppBar(
        backgroundColor: bianco,
      ),
      drawer: MyDrawer(
        desktop: false,
      ),
      body: Consumer<AppProvider>(
        builder: (context, appProvider, _) {
          return appProvider.currentWidget ??
              DashboardPage(); // Mostra il widget corrispondente nel body
        },
      ),
    );
  }
}

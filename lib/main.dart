import 'package:flutter/material.dart';
import 'package:managing/Responsive/desktop.dart';
import 'package:managing/Responsive/mobile.dart';
import 'package:managing/Responsive/tablet.dart';
import 'package:managing/provider.dart';
import 'Responsive/responsive.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts
              .comicNeueTextTheme(), // Utilizza il font "OpenSans" come tema di testo predefinito
        ),
        home: Scaffold(
            body: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold(),
        )));
  }
}

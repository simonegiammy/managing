import 'package:flutter/material.dart';

class MyTeamPage extends StatefulWidget {
  const MyTeamPage({super.key});

  @override
  State<MyTeamPage> createState() => _MyTeamPageState();
}

class _MyTeamPageState extends State<MyTeamPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("team"),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:managing/widget.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff333333),
      ),
      drawer: MyDrawer(
        desktop: false,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0XFFF4F4),
          ),
          Center(
            child: Text("mobile"),
          )
        ],
      ),
    );
  }
}

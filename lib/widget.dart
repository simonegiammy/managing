import 'package:flutter/material.dart';
import 'package:managing/responsive.dart';
import 'package:managing/styles.dart';

class MyDrawer extends StatelessWidget {
  final desktop;
  const MyDrawer({super.key, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff2f2f32),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.only(),
        children: [
          if (!desktop)
            Container(
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.close,
                          color: Color(0xfff4f4f4).withOpacity(0.3),
                        ))
                  ],
                )),
          Container(
            padding: EdgeInsets.all(12),
            height: height * 0.2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    )),
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Text(
                        "Simone\nGiammusso",
                        style: grassettoBianco,
                      ),
                      Text(
                        "Flutter Developer",
                        style: leggeroBianco,
                      ),
                    ]))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff333333)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dashboard",
                  style: leggeroBianco,
                ),
                Icon(
                  Icons.dashboard,
                  color: Color(0xfff4f4f4),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff333333)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Team",
                  style: leggeroBianco,
                ),
                Icon(
                  Icons.people,
                  color: Color(0xfff4f4f4),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff333333)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Tasks",
                  style: leggeroBianco,
                ),
                Icon(
                  Icons.task,
                  color: Color(0xfff4f4f4),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, right: 12, top: 128),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff333333)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Logout",
                  style: leggeroBianco,
                ),
                Icon(
                  Icons.logout,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

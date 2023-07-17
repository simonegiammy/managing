import 'package:flutter/material.dart';
import 'package:managing/Responsive/responsive.dart';
import 'package:managing/Screens/dashboard.dart';
import 'package:managing/Screens/mytasks.dart';
import 'package:managing/Screens/myteam.dart';
import 'package:managing/provider.dart';
import 'package:managing/styles.dart';
import 'package:provider/provider.dart';

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
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    )),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Container(
                        child: Text(
                          "Simone\nGiammusso",
                          style: grassettoBianco,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        child: Text(
                          "bigMoney SRL",
                          style: leggeroBianco,
                        ),
                      ),
                    ]))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              var appProvider =
                  Provider.of<AppProvider>(context, listen: false);
              appProvider.setCurrentWidget(DashboardPage());
              if (!desktop) {
                Navigator.pop(context); // Chiude il drawer se non desktop
              }
            },
            child: Container(
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
          ),
          GestureDetector(
            onTap: () {
              var appProvider =
                  Provider.of<AppProvider>(context, listen: false);
              appProvider.setCurrentWidget(MyTeamPage());
              if (!desktop) {
                Navigator.pop(context); // Chiude il drawer se non desktop
              }
            },
            child: Container(
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
          ),
          GestureDetector(
            onTap: () {
              var appProvider =
                  Provider.of<AppProvider>(context, listen: false);
              appProvider.setCurrentWidget(MyTasksPage());
              if (!desktop) {
                Navigator.pop(context); // Chiude il drawer se non desktop
              }
            },
            child: Container(
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

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      padding: EdgeInsets.only(bottom: 8, left: 0, right: 0),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.white,
          boxShadow: ombre),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover)),
          )),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(color: bianco),
                  padding:
                      EdgeInsets.only(bottom: 0, top: 4, left: 12, right: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "FollowUP BigMoney",
                              style: grassettoNero,
                            )
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FittedBox(child: Icon(Icons.person)),
                            FittedBox(
                                child: Text(
                              "Team BigMoney",
                              style: medioNero,
                            ))
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FittedBox(child: Icon(Icons.location_on_outlined)),
                            FittedBox(
                                child: Text(
                              "28/02/2023 - 16.00",
                              style: leggeroNero,
                            )),
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}

class ToDoList extends StatefulWidget {
  final title;
  const ToDoList({super.key, required this.title});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context, listen: false);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: height * 0.05,
        margin: EdgeInsets.only(left: 16, right: 0, top: 8, bottom: 0),
        padding: EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${widget.title}", style: grassettoNero),
            if (widget.title == "To Do:")
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff2f2f32)),
                  ),
                  onPressed: () {
                    print("pressed");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "AGGIUNGI TASK",
                          style: medioBianco,
                        ),
                      ),
                      Icon(Icons.add)
                    ],
                  ))
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: provider.desktop ? Axis.vertical : Axis.horizontal,
          itemBuilder: (context, index) {
            return TaskCard();
          },
        ),
      )
    ]);
  }
}

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          boxShadow: ombre,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Color(0xff333333)),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: ombre),
                child: Center(
                  child: Text(
                    "93%",
                    maxLines: 1,
                    style: grassettoNero,
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                      width: 1, color: Colors.black.withOpacity(0.4)),
                ),
                child: FittedBox(
                    child: Text(
                  "93 task su 100 completate!",
                  style: leggeroNero,
                )),
              ))
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      constraints: BoxConstraints(minWidth: 200, minHeight: 60),
      padding: EdgeInsets.only(bottom: 8, left: 0, right: 0),
      margin: EdgeInsets.only(left: 16, top: 4, bottom: 4),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.white,
          boxShadow: ombre),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: Text(
                  "title",
                  style: grassettoNero,
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "target",
                      style: medioNero,
                    ),
                  )),
                  Expanded(
                    child: Text(
                      "high",
                      style: leggeroNero,
                    ),
                  ),
                ],
              )),
            ],
          )),
          IconButton(
              onPressed: () {
                print("PRESSED");
              },
              icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}

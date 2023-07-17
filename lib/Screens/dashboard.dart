import 'package:flutter/material.dart';
import 'package:managing/Responsive/responsive.dart';
import 'package:managing/provider.dart';
import 'package:managing/styles.dart';
import 'package:managing/widget.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, r});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context, listen: false);
    bool desktop = appProvider.desktop;
    bool tablet = appProvider.tablet;
    print("desktop: ${desktop}");
    print("tablet: ${tablet}");
    return SingleChildScrollView(
      child: Container(
          width: width,
          height: height,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: desktop
                                ? 3
                                : tablet
                                    ? 2
                                    : 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        margin:
                                            EdgeInsets.only(left: 16, top: 16),
                                        child: FittedBox(
                                          child: Text(
                                            "Prossimi impegni: ",
                                            style: medioNero,
                                          ),
                                        ))),
                                Expanded(
                                    flex: 4,
                                    child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          EventCard(),
                                          EventCard(),
                                          EventCard(),
                                          EventCard(),
                                        ]))
                              ],
                            )),
                        if (desktop || tablet)
                          Expanded(flex: 1, child: SummaryCard())
                      ],
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(top: 24),
                    child: desktop
                        ? Row(
                            children: [
                              Expanded(
                                  child: ToDoList(
                                title: "To Do:",
                              )),
                              Expanded(
                                  child: ToDoList(
                                title: "In Progress:",
                              )),
                              Expanded(
                                  child: ToDoList(
                                title: "Done:",
                              )),
                            ],
                          )
                        : Column(
                            children: [
                              Expanded(
                                  child: ToDoList(
                                title: "To Do:",
                              )),
                              Expanded(
                                  child: ToDoList(
                                title: "In Progress",
                              )),
                              Expanded(
                                  child: ToDoList(
                                title: "Done",
                              )),
                            ],
                          ),
                  ))
            ],
          )),
    );
  }
}

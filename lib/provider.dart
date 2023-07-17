import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:managing/Screens/dashboard.dart';

class AppProvider extends ChangeNotifier {
  Widget currentWidget = DashboardPage();
  bool desktop = false;
  bool tablet = false;
  bool mobile = false;

  void setCurrentLayout(choice) {
    switch (choice) {
      case 'desktop':
        desktop = true;
        tablet = false;
        mobile = false;
        break;
      case 'tablet':
        desktop = false;
        tablet = true;
        mobile = false;
        break;
      case 'mobile':
        desktop = false;
        tablet = false;
        mobile = true;
        break;
    }
    //notifyListeners();
  }

  void setCurrentWidget(Widget widget) {
    currentWidget = widget;
    notifyListeners();
  }
}

import 'package:flutter/widgets.dart';

class AppResourceProvider with ChangeNotifier {
  double? screenDeviceHeight;
  double? screenDeviceWidth;

  // add more by this value on default height
  double appBarHeightExtended = 20;
  double bottomNavBarHeightExtended = 0;
  bool setted = false;
}

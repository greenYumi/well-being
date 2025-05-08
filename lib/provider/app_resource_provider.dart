import 'package:flutter/widgets.dart';

class AppResourceProvider with ChangeNotifier {
  // data

  // ----- APPBAR
  // Icon_size = 36;
  double iconFontSize = 20;

  Future<void> trigerBump() async {
    iconFontSize = 34;
    notifyListeners();
    print("icon besar");

    await Future.delayed(Duration(seconds: 1));

    iconFontSize = 20;
    notifyListeners();
    print("icon kecil");
  }
}

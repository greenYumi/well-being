import 'package:flutter/material.dart';

class GeneralProvider with ChangeNotifier {
  // data her

  List<Map<String, dynamic>> sports = [
    {
      "nama_olahraga": "joging",
      "icon": Icon(Icons.run_circle_outlined),
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "maraton",
      "icon": Icon(Icons.run_circle_outlined),
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "berenang",
      "icon": Icon(Icons.run_circle_outlined),
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "sprint",
      "icon": Icon(Icons.run_circle_outlined),
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "bersepeda",
      "icon": Icon(Icons.run_circle_outlined),
      "display": "jogging.png",
    },
  ];
}

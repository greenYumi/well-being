import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:provider/provider.dart';

class GeneralProvider with ChangeNotifier {
  // for activity page
  String? selected;

  void setSelected(String? namaOlahraga) {
    selected = namaOlahraga;
    notifyListeners();
  }

  Widget pub() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(onPressed: () {}, child: Text("Mulai")),
        ElevatedButton(
          onPressed: () {
            setSelected(null);
            notifyListeners();
          },
          child: Text("batal"),
        ),
      ],
    );
  }

  // when activity page triggered

  List<String> filtering = [];

  void isertFilter(String namaOlahraga) {
    if (filtering.contains(namaOlahraga)) {
      filtering.remove(namaOlahraga);
      debugPrint("$namaOlahraga sudah dihapus");
    } else {
      filtering.add(namaOlahraga);
      debugPrint("$namaOlahraga sudah ditambah!");
    }
    if (activityCategoryStatus[namaOlahraga] == false) {
      activityCategoryStatus[namaOlahraga] = true;
    } else {
      activityCategoryStatus[namaOlahraga] = false;
    }

    debugPrint(filtering.toString());
    debugPrint(activityCategoryStatus[namaOlahraga].toString());
    notifyListeners();
  }

  List<String> activityCategory = [
    "Lari",
    "Sepeda",
    "Air",
    "Olahraga Game",
    "Gym/Fitness",
    "Petualang",
    "Lain-lain",
  ];

  Map<String, bool> activityCategoryStatus = {
    "Lari": false,
    "Sepeda": false,
    "Air": false,
    "Olahraga Game": false,
    "Gym/Fitness": false,
    "Petualang": false,
    "Lain-lain": false,
  };

  List<Map<String, dynamic>> sports = [
    // kategori lari
    {
      "nama_olahraga": "Lari (Outdoor)",
      "kategori": "Lari",
      "desk": "",
      "icon": Symbols.steps,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Lari (Indor)",
      "kategori": "Lari",
      "desk": "",
      "icon": Symbols.steps,
      "display": "jogging.png",
    },

    // kategori sepeda
    {
      "nama_olahraga": "Sepeda (Outdoor)",
      "kategori": "Sepeda",
      "icon": Symbols.pedal_bike,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Sepeda (Indoor)",
      "kategori": "Sepeda",
      "icon": Icons.pedal_bike,
      "display": "jogging.png",
    },
    // kategori olahraga game
    {
      "nama_olahraga": "Basket",
      "kategori": "Olahraga Game",
      "icon": Icons.sports_basketball,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Sepak bola",
      "kategori": "Olahraga Game",
      "icon": Icons.sports_soccer,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "futsal",
      "kategori": "Olahraga Game",
      "icon": Symbols.sports_soccer,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Voli",
      "kategori": "Olahraga Game",
      "icon": Icons.sports_volleyball,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Tenis",
      "kategori": "Olahraga Game",
      "icon": Icons.sports_tennis,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Bowling",
      "kategori": "Olahraga Game",
      "icon": Icons.sports_golf,
      "display": "jogging.png",
    },
    // kategori gym/fitness
    {
      "nama_olahraga": "Latihan Kekuatan",
      "kategori": "Gym/Fitness",
      "icon": Symbols.exercise,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Latihan Kardio",
      "kategori": "Gym/Fitness",
      "icon": Symbols.cardiology,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Yoga",
      "kategori": "Gym/Fitness",
      "icon": Icons.self_improvement,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Pilates",
      "kategori": "Gym/Fitness",
      "icon": Icons.run_circle_outlined,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Dansa",
      "kategori": "Gym/Fitness",
      "icon": Symbols.physical_therapy,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Senam",
      "kategori": "Gym/Fitness",
      "icon": Symbols.physical_therapy,
      "display": "jogging.png",
    },
    // kategori olahraga air
    {
      "nama_olahraga": "Selancar",
      "kategori": "Air",
      "icon": Icons.surfing,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Selancar angin",
      "kategori": "Air",
      "icon": Icons.kitesurfing,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Kitesurfing",
      "kategori": "Air",
      "icon": Icons.kitesurfing,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Paddleboarding",
      "kategori": "Air",
      "icon": Icons.kayaking,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Berlayar",
      "kategori": "Air",
      "icon": Icons.sailing,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Mendayung",
      "kategori": "Air",
      "icon": Icons.rowing,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Berenang (Indoor)",
      "kategori": "Air",
      "icon": Icons.pool,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Berenang (Outdoor)",
      "kategori": "Air",
      "icon": Icons.pool,
      "display": "jogging.png",
    },
    // adventure
    {
      "nama_olahraga": "Panjat tebing",
      "kategori": "Petualang",
      "icon": Icons.landscape,
      "display": "jogging.png",
    },
    {
      "nama_olahraga": "Daki gunung",
      "kategori": "Petualang",
      "icon": Icons.hiking,
      "display": "jogging.png",
    },
    // lain lain
    {
      "nama_olahraga": "Berkuda",
      "icon": Icons.abc,
      "display": "jogging.png",
      "kategori": "Lain-lain",
    },
  ];

  // Theme section (using switch button)
  bool? isThemeLight = true;

  void setTheme(bool? value) {
    isThemeLight = value;

    notifyListeners();
  }
}

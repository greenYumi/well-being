import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // main-Info-board
        Container(
          // height: 592,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 223, 223, 223),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              // user-state-board
              Column(
                spacing: 5,
                children: [
                  // user-number-status
                  Row(
                    spacing: 10,
                    children: [
                      // main-info
                      Expanded(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.favorite, size: 44),
                          ),
                          title: Text(
                            "65",
                            style: GoogleFonts.inriaSans(
                              fontSize: 96,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      // secondary-info
                      Expanded(
                        child: Column(
                          children: [
                            // steps-info
                            ListTile(
                              title: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "10.000",
                                  style: TextStyle(fontSize: 32),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              trailing: Icon(Symbols.steps, size: 40),
                            ),
                            // burn-calories-info
                            ListTile(
                              title: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "720",
                                  style: TextStyle(fontSize: 32),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              trailing: Icon(Symbols.mode_heat, size: 40),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // need-attantion
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.chair_outlined, size: 44),
                      title: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Kamu sudah duduk selama "),
                            Text(
                              "1 jam 40 menit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // hero-board
              Container(
                // color: Colors.green,
                child: Container(
                  constraints: BoxConstraints(minHeight: 335),
                  child: Row(
                    children: [
                      // character-display, TODO: do me after
                      Expanded(flex: 3, child: Container()),
                      //
                      // character-message
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(
                            20.0,
                          ), // FIXME: bungkus Countiner lagi kalo ccok
                          child: Column(
                            spacing: 15,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // main-message
                              Text(
                                "kamu duduk terlalu lama, Blud. Apakah kamu di depan komputer?",
                                style: GoogleFonts.inriaSans(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              // suggets-message
                              Text(
                                "Ayo bangun, berjalan sebentar",
                                style: GoogleFonts.inriaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              // do-a-suggestion or mini-goals
                              Text(
                                "0 / 100 Langkah",
                                style: GoogleFonts.inriaSans(fontSize: 20),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

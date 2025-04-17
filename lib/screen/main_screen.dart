import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:well_being/screen/sport_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        // main-Info-board
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 255, 255, 255),
                const Color.fromARGB(255, 218, 218, 218),
              ],
              stops: [.25, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            // TODO: pertimbangkan mau pakai shadow atau tidak
            //
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 13),
                blurRadius: 8,
                blurStyle: BlurStyle.outer,
                spreadRadius: -13,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30,
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
                // FIXME: coba cek lagi di inspektor
                // color: Colors.green,
                child: Container(
                  constraints: BoxConstraints(minHeight: 400),
                  child: Row(
                    children: [
                      // character-display
                      Expanded(
                        flex: 6,
                        child: Image.asset(
                          "images/bunny.png",
                          scale: 0.8,
                          alignment: Alignment.center,
                        ),
                      ),
                      //
                      // character-message
                      Expanded(
                        flex: 5,
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
                                  fontSize: 26,
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
        // fitur-button
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // adaptif-button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.visibility, size: 30),
                title: Text(
                  "Gunakan aturan 20 - 20 - 20",
                  style: GoogleFonts.inriaSans(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              onPressed: () {},
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SportScreen()),
                );
              },
              child: Text("hello"),
            ),
          ],
        ),
      ],
    );
  }
}

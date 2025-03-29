import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // main-Info-board
        Container(
          height: 592,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 20,
            children: [
              // user-state-board
              Column(
                spacing: 10,
                children: [
                  // user-number-status
                  Row(
                    children: [
                      // main-info
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.favorite, size: 44),
                          title: Text(
                            "67",
                            style: TextStyle(fontSize: 96),
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
                      leading: Icon(Icons.chair, size: 44),
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
              Container(height: 331, color: Colors.green),
            ],
          ),
        ),
      ],
    );
  }
}

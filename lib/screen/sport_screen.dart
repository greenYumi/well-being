import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/general_provider.dart';

class SportScreen extends StatefulWidget {
  const SportScreen({super.key});

  @override
  State<SportScreen> createState() => _SportScreenState();
}

class _SportScreenState extends State<SportScreen> {
  @override
  Widget build(BuildContext context) {
    var providerFileRead = context.read<GeneralProvider>();
    var providerFileWatch = context.watch<GeneralProvider>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            spacing: 10,

            children: [
              // display and description
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      (providerFileRead.selected == null)
                          ? "not selected"
                          : providerFileRead.selected.toString(),
                    ),
                  ),
                ),
              ),

              // probably chips button
              Wrap(
                runSpacing: 5,
                spacing: 5,
                direction: Axis.horizontal,

                children: [
                  ...providerFileRead.activityCategory.map(
                    (a) => ActionChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      onPressed: () {
                        providerFileRead.isertFilter(a);
                      },
                      label: Text(a),
                      backgroundColor:
                          (providerFileWatch.activityCategoryStatus[a] == false)
                              ? Colors.amber.shade100
                              : Colors.amber,
                    ),
                  ),
                ],
              ),

              // scrollable screen
              Expanded(
                flex: 6,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children:
                      (providerFileWatch.filtering.isNotEmpty)
                          ? [
                            ...providerFileRead.sports
                                .where(
                                  (element) => (providerFileWatch.filtering
                                      .contains(element["kategori"])),
                                )
                                .map(
                                  (e) => Container(
                                    height: 50,
                                    child: Text("${e["nama_olahraga"]}"),
                                  ),
                                ),
                          ]
                          : [
                            ...providerFileWatch.sports.map(
                              (e) => Container(
                                height: 50,
                                child: Text("${e["nama_olahraga"]}"),
                              ),
                            ),
                          ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          (providerFileRead.selected == null)
              ? ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.turn_left), Text("kembali")],
                ),
              )
              : providerFileRead.pub(),
    );
  }
}

import 'package:flutter/material.dart';

class MainDialogBox extends StatelessWidget {
  const MainDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.up,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Expanded(
              child: Card(
                // dialog_box;
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Halo, selamat pagi"),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Card(
                color: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(0, 255, 255, 255),
                          Color.fromARGB(255, 255, 250, 184),
                        ],
                        stops: [0.25, 0.75],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.thermostat, color: Colors.blue.shade300),
                          Text('30°'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Cuaca cerah"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

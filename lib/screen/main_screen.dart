import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.light_mode, color: Colors.amber, size: 36),
          Switch(value: true, onChanged: (value) {}),
        ],
        backgroundColor: Colors.amber.shade100,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              height: 100,
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.heart_broken, size: 30),
                        Text("70", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.heart_broken, size: 30),
                        Text("70", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.heart_broken, size: 30),
                        Text("70", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 350,
              color: Colors.grey,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                        child: Center(
                          child: Text("Gambar", style: TextStyle(fontSize: 28)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: double.infinity),
                                      Text(
                                        "Message",
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                title: Text(
                                  "Button",
                                  style: TextStyle(fontSize: 28),
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                title: Text(
                                  "Button",
                                  style: TextStyle(fontSize: 28),
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
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Card(child: ListTile(title: Text("progress"))),
                Card(child: ListTile(title: Text("progress"))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/app_resource_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.light_mode, color: Colors.amber, size: 36),
          Switch(
            value: true,
            onChanged: (value) {
              context.read<AppResourceProvider>().trigerBump();
            },
          ),
          SizedBox(width: 16),
        ],
        backgroundColor: Colors.amber.shade100,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.heart_broken, size: 36),
                          Consumer<AppResourceProvider>(
                            builder:
                                (context, value, child) => AnimatedSize(
                                  duration: Duration(seconds: 1),
                                  child: Text(
                                    "70",
                                    style: TextStyle(
                                      fontSize: value.iconFontSize,
                                    ),
                                  ),
                                ),
                          ),
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
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                "Gambar",
                                style: TextStyle(fontSize: 28),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),

                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(minHeight: 200),
                                child: Card(
                                  child: Column(
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
                              Column(
                                children: [
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
                            ],
                          ),
                        ),
                      ],
                    ),
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
      ),
    );
  }
}

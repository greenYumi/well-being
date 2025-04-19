import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/general_provider.dart';
import 'package:well_being/screen/main_screen.dart';
import 'package:well_being/screen/sport_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GeneralProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MainScreen(),
          ),
        ),
      ),
    );
  }
}

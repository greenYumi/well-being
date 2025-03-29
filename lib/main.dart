import 'package:flutter/material.dart';
import 'package:well_being/screen/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Scaffold(body: MainScreen()),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/app_resource_provider.dart';
import 'package:well_being/widget/main_dialog_box.dart';
import 'package:well_being/widget/user_response_button.dart';

int currentIndex = 0;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final dataRead = context.read<AppResourceProvider>();

    return Scaffold(
      body: Container(
        color: Colors.amber.shade100,
        height: dataRead.screenDeviceHeight,
        child: Column(
          spacing: 10,
          children: [
            Expanded(
              flex: 5,
              child: Card(
                elevation: 3,
                margin: EdgeInsets.all(0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    color: Colors.white,
                  ),

                  child: Stack(
                    children: [
                      // MainImage();
                      MainDialogBox(),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      UserResponseButton(response: 'Hallo selamat pagi juga'),
                      UserResponseButton(response: 'Bangunin 10 menit lagi.'),
                      UserResponseButton(
                        response: 'Masih males, mau lanjut tidur',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

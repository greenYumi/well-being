import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/app_resource_provider.dart';
import 'package:well_being/widget/main_dialog_box.dart';
import 'package:well_being/widget/user_response_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataRead = context.read<AppResourceProvider>();

    // set screenValue
    dataRead.screenDeviceHeight =
        (MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight);

    dataRead.screenDeviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent),

      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Settings'),
        ],
      ),

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

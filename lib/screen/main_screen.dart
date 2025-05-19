import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/app_resource_provider.dart';

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

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent),

      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),

      body: Container(
        height: dataRead.screenDeviceHeight,
        child: Column(
          spacing: 1,
          children: [
            Expanded(
              flex: 5,
              child: Card(
                elevation: 3,
                margin: EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    color: Colors.white,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Container(color: Colors.yellow)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(flex: 2, child: Container()),
          ],
        ),
      ),
    );
  }
}

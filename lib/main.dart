import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/app_resource_provider.dart';
import 'package:well_being/screen/main_screen.dart';
import 'package:well_being/screen/social_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppResourceProvider()),
      ],
      child: MyApp(),
    ),
  );
}

List<Map<String, dynamic>> drawerItem = [
  {'title': 'Changelog', 'icon': Icons.assignment},
  {'title': 'divide'},
  {'title': 'Settings', 'icon': Icons.settings},
  {'title': 'Share', 'icon': Icons.share},
  {'title': 'Feedback', 'icon': Icons.feedback},
  {'title': 'Report', 'icon': Icons.report},
  {'title': 'About', 'icon': Icons.info},
];

int currentIndex = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final dataRead = context.read<AppResourceProvider>();

    // TODO: put this config var in main.dart (rio)
    //get and set appBar and bottomNavbar height
    if (!dataRead.setted) {
      dataRead.appBarHeightExtended += kToolbarHeight;
      dataRead.bottomNavBarHeightExtended += kBottomNavigationBarHeight;
      dataRead.setted = true;
    }

    // set screenValue
    dataRead.screenDeviceHeight =
        (MediaQuery.of(context).size.height -
            dataRead.appBarHeightExtended -
            dataRead.bottomNavBarHeightExtended);

    dataRead.screenDeviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          toolbarHeight: dataRead.appBarHeightExtended,
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: dataRead.screenDeviceHeight! / 3,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'images/user/drawer_avatar.jpeg',
                      ),
                    ),
                    Text(
                      'Prediko',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ...drawerItem.map((e) {
                return (e['title'] != 'divide')
                    ? InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(e['icon']),
                        title: Text(e['title']),
                      ),
                    )
                    : Divider();
              }),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          selectedItemColor: Colors.amber,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.public), label: ''),
          ],
        ),

        body: [MainScreen(), SocialScreen()][currentIndex],
      ),
    );
  }
}

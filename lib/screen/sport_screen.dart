import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/general_provider.dart';

List<int> list = List.generate((50), (index) => index, growable: true);

class SportScreen extends StatelessWidget {
  const SportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(flex: 2, child: Container(color: Colors.amber)),

          // probably chips button
          Expanded(
            child: Row(
              children: [
                ActionChip(
                  onPressed: () {},
                  label: Semantics(
                    button: true,
                    enabled: true,
                    child: Text("yeah"),
                  ),
                ),
              ],
            ),
          ),

          // scrollable screen
          Expanded(
            flex: 4,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: [
                ...context.read<GeneralProvider>().sports.map(
                  (e) => Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [e["icon"], Text("${e["nama_olahraga"]}")],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

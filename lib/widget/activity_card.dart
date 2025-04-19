import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/general_provider.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity});

  final Map<String, dynamic> activity;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: () {
        context.read<GeneralProvider>().setSelected(activity["nama_olahraga"]);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(activity["icon"], size: 40),
            Text(
              activity["nama_olahraga"],
              style: GoogleFonts.inriaSans(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

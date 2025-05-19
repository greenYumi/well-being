import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:well_being/provider/app_resource_provider.dart';

class UserResponseButton extends StatelessWidget {
  const UserResponseButton({super.key, required this.response});

  final String response;

  @override
  Widget build(BuildContext context) {
    final dataRead = context.read<AppResourceProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          maximumSize: Size(dataRead.screenDeviceWidth! - 100, double.infinity),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(response),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
   BackgroundScreen({required this.colorScreen,super.key});
Color colorScreen;
  @override
  Widget build(BuildContext context) {
  return Container(
    color: colorScreen,
  );
  }

}


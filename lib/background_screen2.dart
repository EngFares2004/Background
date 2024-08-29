import 'package:flutter/material.dart';



class BackgroundScreen extends StatelessWidget {
  var imageScreen;

  BackgroundScreen({required this.imageScreen,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
          fit: BoxFit.cover, imageScreen.toString()),
    );
  }

}

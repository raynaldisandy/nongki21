import 'package:flutter/material.dart';

class SloganLayout extends StatelessWidget {
  const SloganLayout({super.key, required this.iconData, required this.title});
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(iconData, size: 60,),
      const SizedBox(),
      Text(title, textAlign: TextAlign.center,  )
    ],);
  }
}
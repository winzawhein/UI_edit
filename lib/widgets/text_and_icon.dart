import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const TextIcon({ Key? key,required this.text,required this.icon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(height: 5,),
        Text(text),
      ],
    );
  }
}
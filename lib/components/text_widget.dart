import 'package:flutter/material.dart';
 

Text TextWidget(
  String text, {
  double fontSize = 14,
  FontWeight weight = FontWeight.normal,
  Color? color,
  TextAlign align = TextAlign.left,
}) {
  color ??= Colors.black;
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: weight,
    ),
  );
}
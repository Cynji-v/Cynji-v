import 'package:flutter/material.dart';
import 'package:bmi_calculator/dtkr.dart';

Color primary = const Color.fromARGB(204, 15, 40, 48);
Color secondary = Colors.black;
Color primaryButtonColor =
    const Color.fromARGB(255, 205, 20, 122); //HexColor("e74c3c");
Color secondaryButtonColor = HexColor("212f3c");

TextStyle headlines =
    TextStyle(letterSpacing: 2.0, fontSize: 15, color: HexColor("d3d3d3"));
TextStyle boldNumber = TextStyle(
    color: HexColor("fbfbfb"), fontWeight: FontWeight.bold, fontSize: 50.0);
TextStyle secondaryButtonColorStyle =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0);
TextStyle primaryButtonStyle = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  letterSpacing: 1,
  wordSpacing: 2,
);
TextStyle resultNumber = TextStyle(
    color: HexColor("fbfbfb"),
    fontWeight: FontWeight.bold,
    fontSize: 80.0,
    letterSpacing: 0.1);

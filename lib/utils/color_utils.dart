// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length ==6){
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor,radix: 16));
}
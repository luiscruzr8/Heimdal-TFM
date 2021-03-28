import 'package:flutter/material.dart';

final _appColors = <String, Color>{
  'golden_yellow': Color(0xFFFFE100),
  'lemon_curry': Color(0xFFAB9700),
  'baby_powder': Color(0xFFFDFCF6),
  'cadet_grey': Color(0xFF9AA0A8),
  'jet_grey': Color(0xFF34312D),
  'rich_black': Color(0xFF020202),
};

Color getColor(String colorName) {
  return _appColors[colorName];
}

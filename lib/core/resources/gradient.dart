import 'package:flutter/material.dart';

class BaseGradient {
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0XFF8900FF),
      Color(0XFFA300FF),
      Color(0XFFB500FF),
    ],
  );

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0XFFCF2FF9),
      Color(0XFF9104B6),
    ],
  );
}

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
}

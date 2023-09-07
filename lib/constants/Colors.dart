import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

bool isDarkmode() {
  final Brightness brightness =
      WidgetsBinding.instance.window.platformBrightness;
  return brightness == Brightness.dark;
}

Color primaryColor = isDarkmode()
    ? const Color.fromARGB(255, 15, 15, 15)
    : const Color.fromARGB(255, 255, 255, 255);
Color secondColor = isDarkmode()
    ? Color.fromARGB(255, 46, 46, 46)
    : const Color.fromARGB(255, 243, 243, 243);

Color textColor = isDarkmode()
    ? Color.fromARGB(255, 240, 240, 240)
    : Color.fromARGB(255, 0, 0, 0);

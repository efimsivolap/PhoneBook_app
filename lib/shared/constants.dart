import 'package:flutter/material.dart';

class Constants {
  static String appId = "1:1078319116100:web:83b3231f093b008802f111";
  static String apiKey = "AIzaSyACuLESEGvZ36XaqxUzbnwt2WJG6lZ-0k8";
  static String messagingSenderId = "1078319116100";
  static String projectId = "phonelist-ccc02";
  final primaryColor = const Color(0xFFee7b64);
}

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? Color.fromARGB(255, 64, 64, 64)
          : Color.fromARGB(255, 230, 228, 228),
      primaryColor: Color.fromARGB(255, 74, 168, 245),
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: isDarkTheme
                ? Color.fromARGB(255, 199, 195, 195)
                : const Color(0xFFF2FDFD),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor: isDarkTheme
          ? Color.fromARGB(255, 103, 102, 102)
          : Color.fromARGB(255, 208, 206, 206),
      canvasColor: isDarkTheme
          ? Color.fromARGB(255, 181, 179, 179)
          : Color.fromARGB(255, 172, 171, 171),
    );
  }
}

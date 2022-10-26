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
          ? Color.fromARGB(255, 98, 98, 98)
          : const Color(0xFFFFFFFF),
      primaryColor: Color.fromARGB(255, 74, 168, 245),
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: isDarkTheme
                ? Color.fromARGB(255, 60, 60, 60)
                : const Color(0xFFF2FDFD),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor: isDarkTheme
          ? Color.fromARGB(255, 41, 41, 41)
          : const Color(0xFFF2FDFD),
      canvasColor: isDarkTheme
          ? Color.fromARGB(255, 120, 116, 116)
          : Color.fromARGB(255, 93, 91, 91),
    );
  }
}

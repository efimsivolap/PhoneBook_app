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
      scaffoldBackgroundColor:
          isDarkTheme ? const Color(0xFF00001a) : const Color(0xFFFFFFFF),
      primaryColor: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary:
                isDarkTheme ? const Color(0xFF1a1f3c) : const Color(0xFFF2FDFD),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor:
          isDarkTheme ? const Color(0xFF0a0d2c) : const Color(0xFFF2FDFD),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
    );
  }
}

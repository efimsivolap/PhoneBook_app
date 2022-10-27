import 'package:flutter/material.dart';
import 'package:phone_book_app/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SwitchListTile(
          title: Text("Тема"),
          secondary: Icon(themeState.getDarkTheme
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          onChanged: (bool value) {
            setState(() {
              themeState.setDarkTheme = value;
            });
          },
          value: themeState.getDarkTheme,
        ),
      ),
    );
    ;
  }
}

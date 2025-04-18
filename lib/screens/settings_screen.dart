import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: ListView(children: [
        SwitchListTile(
          title: Text("Dark Mode"),
          value: themeProvider.themeMode == ThemeMode.dark,
          onChanged: (val) => themeProvider.toggleTheme(val),
        ),
        ListTile(
          title: Text("Logout"),
          onTap: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (_) => LoginScreen()), (route) => false);
          },
        ),
      ]),
    );
  }
}

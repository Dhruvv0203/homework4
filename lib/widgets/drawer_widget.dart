import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        ListTile(title: Text('Message Boards'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()))),
        ListTile(title: Text('Profile'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen()))),
        ListTile(title: Text('Settings'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsScreen()))),
      ]),
    );
  }
}

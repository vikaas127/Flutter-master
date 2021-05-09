import 'package:flutter/material.dart';

import 'change_password/change_password.dart';

class SettingsPage extends StatefulWidget {
  static const String routeName = '/settings';
  const SettingsPage({Key key}) : super(key: key);
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('change password'),
            onTap: () {
              Navigator.of(context).pushNamed(ChangePassword.routeName);
            },
          )
        ],
      ),
    );
  }
}

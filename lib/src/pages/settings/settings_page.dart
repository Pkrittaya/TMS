import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    debugPrint('test setting');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("⚙️ Settings Screen", style: TextStyle(fontSize: 24)),
    );
  }
}

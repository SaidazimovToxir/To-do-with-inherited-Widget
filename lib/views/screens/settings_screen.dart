import 'package:flutter/material.dart';
import 'package:lesson45/notifiers/setting_notifier.dart';
import 'package:lesson45/views/widgets/custom_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = SettingNotifier.of(context).settings;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings page"),
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Holat"),
            value: settings.themeMode == ThemeMode.dark,
            onChanged: (value) {
              SettingNotifier.of(context).toggleTheme(value);
            },
          ),
        ],
      ),
    );
  }
}

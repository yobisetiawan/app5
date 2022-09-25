import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:flutter/material.dart';

class SettingThemeScreen extends StatelessWidget {
  const SettingThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.theme),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10.0),
        children: [
          ListTile(
            onTap: () {},
            title: const YbText('Dark'),
            trailing: const Icon(Icons.check),
          ),
          ListTile(
            onTap: () {},
            title: const YbText('Light'),
            trailing: null,
          ),
        ],
      ),
    );
  }
}

import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:flutter/material.dart';

class SettingLanguageScreen extends StatelessWidget {
  const SettingLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.languages),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10.0),
        children: [
          ListTile(
            onTap: () {},
            title: const YbText('English'),
            trailing: const Icon(Icons.check),
          ),
          ListTile(
            onTap: () {},
            title: const YbText('Bahasa Indonesia'),
            trailing: null,
          ),
        ],
      ),
    );
  }
}

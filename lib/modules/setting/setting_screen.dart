import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:app5/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.setting),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10.0),
        children: ListTile.divideTiles(
          context: context,
          tiles: <Widget>[
            ListTile(
              onTap: () {
                Get.toNamed(RoutesNames.settingLanguage);
              },
              title: const YbText(Lang.languages),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(RoutesNames.settingTheme);
              },
              title: const YbText(Lang.theme),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(RoutesNames.settingFont);
              },
              title: const YbText(Lang.fonts),
              trailing: const Icon(Icons.arrow_forward_ios),
            )
          ],
        ).toList(),
      ),
    );
  }
}

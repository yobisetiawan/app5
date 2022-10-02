import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:app5/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingLanguageScreen extends StatelessWidget {
  const SettingLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.find<LanguageProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.languages),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10.0),
        itemCount: c.list.length,
        itemBuilder: (BuildContext context, int index) {
          var item = c.list[index];
          return ListTile(
            onTap: () {
              c.selectItem(item!);
            },
            title: YbText(item!.label),
            trailing: c.locale.value.countryCode == item.country
                ? const Icon(Icons.check)
                : null,
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}

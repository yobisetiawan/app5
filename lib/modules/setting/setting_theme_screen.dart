import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:app5/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingThemeScreen extends StatelessWidget {
  const SettingThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.find<ThemeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.theme),
      ),
      body: Obx(
        () {
          return Stack(
            children: [
              Opacity(
                opacity: 0,
                child: YbText(c.themeItem.value?.code ?? ''),
              ),
              ListView.builder(
                padding: const EdgeInsets.only(top: 10.0),
                itemCount: c.list.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = c.list[index];

                  return ListTile(
                    onTap: () {
                      c.selectItem(item!);
                    },
                    title: YbText(item!.label),
                    trailing: c.themeItem.value?.code == item.code
                        ? const Icon(Icons.check)
                        : null,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

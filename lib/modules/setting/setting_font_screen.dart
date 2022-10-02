import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:app5/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingFontScreen extends StatelessWidget {
  const SettingFontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.find<ThemeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.fonts),
      ),
      body: Obx(
        () {
          return Stack(
            children: [
              Opacity(
                opacity: 0,
                child: YbText(c.fontItem.value?.code ?? 'no value'),
              ),
              ListView.separated(
                padding: const EdgeInsets.only(top: 10.0),
                itemCount: c.listFonts.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = c.listFonts[index];

                  return ListTile(
                    onTap: () {
                      c.selectFont(item!);
                    },
                    title: YbText(item!.label),
                    trailing: c.fontItem.value?.code == item.code
                        ? const Icon(Icons.check)
                        : null,
                  );
                },
                separatorBuilder: ((context, index) => const Divider()),
              ),
            ],
          );
        },
      ),
    );
  }
}

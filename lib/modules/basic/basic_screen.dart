import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:app5/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listMenu = [
      {'title': 'Text Widget', 'target': RoutesNames.widgetText},
      {'title': 'Avatar Widget', 'target': RoutesNames.widgetAvatar},
      {'title': 'Button Widget', 'target': RoutesNames.widgetButton},
      {'title': 'Window Widget', 'target': RoutesNames.widgetWindow},
      {'title': 'Form Widget', 'target': RoutesNames.widgetForm},
      {'title': 'PinCode Widget', 'target': RoutesNames.widgetPinCode},
      {'title': 'CountDown Widget', 'target': RoutesNames.widgetCountDown},
      {'title': 'Card Widget', 'target': RoutesNames.widgetCard},
      {'title': 'AppBar Widget', 'target': RoutesNames.widgetText},
      {'title': 'Header Widget', 'target': RoutesNames.widgetText},
      {'title': 'Tab Widget', 'target': RoutesNames.widgetText},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.basic),
      ),
      body: ListView.separated(
        //  padding: const EdgeInsets.only(top: 10.0),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.toNamed(listMenu[index]['target'] ?? '/');
            },
            title: YbText(
              listMenu[index]['title'] ?? '',
              type: YbTextType.body,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 11.0,
            ),
          );
        },
        itemCount: listMenu.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
          );
        },
      ),
    );
  }
}

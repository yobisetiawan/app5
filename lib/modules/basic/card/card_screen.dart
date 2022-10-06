import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listMenu = [
      {'title': 'Card 01', 'target': RoutesNames.widgetCard01},
      {'title': 'Card 02', 'target': RoutesNames.widgetCard02},
      {'title': 'Card 03', 'target': RoutesNames.widgetText},
      {'title': 'Card 04', 'target': RoutesNames.widgetText},
      {'title': 'Card 05', 'target': RoutesNames.widgetText},
      {'title': 'Card 06', 'target': RoutesNames.widgetText},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Card Widget'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10.0),
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

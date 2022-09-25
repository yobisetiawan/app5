import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.home),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: const [
          YbText(
            Lang.hallo,
          )
        ],
      ),
    );
  }
}

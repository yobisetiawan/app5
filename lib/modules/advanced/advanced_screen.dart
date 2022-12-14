import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/languages/keys_lang.dart';
import 'package:flutter/material.dart';

class AdvancedScreen extends StatelessWidget {
  const AdvancedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText(Lang.advanced),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: const YbText(
          Lang.business,
        ),
      ),
    );
  }
}

import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

class Card00Screen extends StatelessWidget {
  const Card00Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Card01 Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: const [
          YbText(
            'This is text with title large',
            type: YbTextType.titleLarge,
          ),
        ],
      ),
    );
  }
}

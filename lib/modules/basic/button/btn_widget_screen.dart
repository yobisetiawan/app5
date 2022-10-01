import 'package:app5/components/Button/yb_btn.dart';
import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

class ButtonWidgetScreen extends StatelessWidget {
  const ButtonWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Button Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          YbButton(child: const YbText('Default Button'), onPressed: () {}),
          YbButton(
            onPressed: () {},
            type: YbButtonType.outline,
            child: const YbText('Outline Button'),
          ),
          YbButton(
            onPressed: () {},
            type: YbButtonType.text,
            child: const YbText('Text Button'),
          ),
          YbButton(
            onPressed: () {},
            isRounded: true,
            child: const YbText('Default Rounded Button'),
          ),
          YbButton(
            onPressed: () {},
            isRounded: true,
            type: YbButtonType.outline,
            child: const YbText('Outline Rounded Button'),
          ),
          YbButton(
            onPressed: () {},
            isRounded: true,
            type: YbButtonType.text,
            child: const YbText('Text Rounded Button'),
          ),
        ],
      ),
    );
  }
}

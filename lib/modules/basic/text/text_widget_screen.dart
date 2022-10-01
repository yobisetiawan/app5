import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

class TextWidgetScreen extends StatelessWidget {
  const TextWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Text Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: const [
          YbText(
            'This is text with title large',
            type: YbTextType.titleLarge,
          ),
          SizedBox(
            height: 10.0,
          ),
          YbText(
            'This is Paragraph, Lorem Ipsum is simply dummy text of the printing '
            'and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
            'when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
            'It has survived not only five centuries, but also the leap into electronic typesetting, '
            'remaining essentially unchanged. It was popularised in the 1960s with the release of '
            'Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software '
            'like Aldus PageMaker including versions of Lorem Ipsum.',
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),
          YbText(
            'This is text with title medium',
            type: YbTextType.titleMedium,
          ),
          SizedBox(
            height: 5.0,
          ),
          YbText(
            'This is text with style subtitle',
            type: YbTextType.subtitle,
          ),
          SizedBox(
            height: 10.0,
          ),
          YbText(
            'This is Paragraph, Lorem Ipsum is simply dummy text of the printing '
            'and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
            'when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
            'It has survived not only five centuries, but also the leap into electronic typesetting, '
            'remaining essentially unchanged. It was popularised in the 1960s with the release of '
            'Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software '
            'like Aldus PageMaker including versions of Lorem Ipsum.',
          ),
        ],
      ),
    );
  }
}

import 'package:app5/components/Text/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum YbTextType {
  body,
  titleLarge,
  titleMedium,
  subtitle,
}

class YbText extends StatelessWidget {
  const YbText(this.data, {Key? key, this.style, this.type}) : super(key: key);

  final String data;
  final TextStyle? style;
  final YbTextType? type;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.tr,
      style: getStyle(context),
    );
  }

  TextStyle? getStyle(context) {
    if (style != null) {
      return style;
    }

    if (type == YbTextType.titleLarge) {
      return TextStyles(context).getTitleLargeStyle();
    }

    if (type == YbTextType.titleMedium) {
      return TextStyles(context).getTitleMediumStyle();
    }

    if (type == YbTextType.subtitle) {
      return TextStyles(context).getSubtitleStyle();
    }

    if (type == YbTextType.body) {
      return TextStyles(context).getBodyStyle().copyWith();
    }

    return const TextStyle();
  }
}

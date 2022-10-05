import 'package:flutter/material.dart';

class TextStyles {
  final BuildContext context;

  TextStyles(this.context);

  TextStyle getTitleLargeStyle() {
    return Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle getTitleMediumStyle() {
    return Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle getBodyStyle() {
    return Theme.of(context).textTheme.bodyText1!.copyWith();
  }

  TextStyle getSubtitleStyle() {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
          fontSize: 11,
        );
  }
}

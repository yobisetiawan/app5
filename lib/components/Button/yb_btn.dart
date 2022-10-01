import 'package:app5/components/Button/btn_styles.dart';
import 'package:flutter/material.dart';

enum YbButtonType { text, evelated, outline }

class YbButton extends StatelessWidget {
  const YbButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.style,
      this.isRounded = false,
      this.type = YbButtonType.evelated})
      : super(key: key);
  final Widget child;
  final Function()? onPressed;
  final YbButtonType type;
  final ButtonStyle? style;
  final bool isRounded;

  @override
  Widget build(BuildContext context) {
    if (type == YbButtonType.text) {
      return TextButton(
        onPressed: onPressed,
        style: getStyle(),
        child: child,
      );
    }

    if (type == YbButtonType.outline) {
      return OutlinedButton(
        onPressed: onPressed,
        style: getStyle(),
        child: child,
      );
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: getStyle(),
      child: child,
    );
  }

  ButtonStyle? getStyle() {
    if (style != null) {
      return style;
    }

    if (isRounded) {
      return ButtonStyles().getBaseBtnStyle(type).copyWith(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                //side: const BorderSide(color: Colors.red),
              ),
            ),
          );
    }

    return null;
  }
}

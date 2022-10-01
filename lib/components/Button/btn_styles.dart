import 'package:app5/components/Button/yb_btn.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
   

  ButtonStyle getBaseBtnStyle(YbButtonType type) {
    if (type == YbButtonType.text) {
      return TextButton.styleFrom();
    }

    if (type == YbButtonType.outline) {
      return OutlinedButton.styleFrom();
    }

    return ElevatedButton.styleFrom();
  }
}

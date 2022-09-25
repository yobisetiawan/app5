import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YbText extends StatelessWidget {
  const YbText(this.data, {Key? key}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(data.tr);
  }
}

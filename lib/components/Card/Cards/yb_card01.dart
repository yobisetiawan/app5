import 'package:flutter/material.dart';

class YbCard01 extends StatelessWidget {
  const YbCard01({Key? key, required this.children, this.elevation})
      : super(key: key);

  final List<Widget> children;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class YbCard extends StatelessWidget {
  const YbCard({Key? key, required this.child, this.height, this.width})
      : super(key: key);

  final double? height;
  final double? width;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: height,
      width: width,
      child: child,
    );
  }
}

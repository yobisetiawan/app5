import 'package:flutter/material.dart';

class YbCard02 extends StatelessWidget {
  const YbCard02(
      {Key? key,
      this.elevation,
      this.onTap,
      this.radius = 8,
      required this.image,
      this.width,
      this.height = 100.0})
      : super(key: key);

  final double? elevation;
  final double radius;
  final ImageProvider<Object> image;
  final double? height;
  final double? width;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: Colors.grey,
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

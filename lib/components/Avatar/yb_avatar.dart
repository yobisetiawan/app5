import 'package:flutter/material.dart';

class YbAvatarSize {
  static const double extraSmall = 20;

  static const double small = 30;

  static const double medium = 50;

  static const double large = 60;
}

class YbAvatarRoundedSize {
  static const double extraSmall = 6;

  static const double small = 8;

  static const double medium = 14;

  static const double large = 18;
}

enum YbAvatarShape { circle, box }

class YbAvatar extends StatelessWidget {
  const YbAvatar(
      {Key? key,
      this.size = YbAvatarSize.small,
      this.backgroundImage,
      this.roundedSize,
      this.shape = YbAvatarShape.circle})
      : super(key: key);

  final double? size;
  final ImageProvider<Object>? backgroundImage;
  final YbAvatarShape shape;
  final double? roundedSize;

  @override
  Widget build(BuildContext context) {
    if (shape == YbAvatarShape.box) {
      return Container(
        height: (size ?? 0) * 2,
        width: (size ?? 0) * 2,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(roundedSize ?? 0),
          image: DecorationImage(
              image: backgroundImage ??
                  const NetworkImage('https://i.pravatar.cc/500'),
              fit: BoxFit.cover),
        ),
      );
    }
    return CircleAvatar(
      radius: size,
      backgroundColor: Colors.grey,
      backgroundImage: backgroundImage,
    );
  }
}

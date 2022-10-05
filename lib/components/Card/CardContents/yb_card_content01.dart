import 'package:flutter/material.dart';

class YbCardContent01 extends StatelessWidget {
  const YbCardContent01(
      {Key? key,
      this.children,
      this.onTap,
      this.title,
      this.image,
      this.imageTitle,
      this.topImage,
      this.isExpanded = false,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.subTitle})
      : super(key: key);

  final List<Widget>? children;
  final void Function()? onTap;
  final Widget? title;
  final Widget? imageTitle;
  final Widget? subTitle;
  final Widget? image;
  final Widget? topImage;
  final CrossAxisAlignment crossAxisAlignment;

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    Widget content = GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment,
          children: children ??
              [
                topImage ?? const SizedBox.shrink(),
                Row(
                  children: [
                    image ?? const SizedBox.shrink(),
                    const SizedBox(
                      width: 4.0,
                    ),
                    imageTitle ?? const SizedBox.shrink(),
                  ],
                ),
                title ?? const SizedBox.shrink(),
                subTitle ?? const SizedBox.shrink(),
              ],
        ),
      ),
    );
    return isExpanded ? Expanded(child: content) : content;
  }
}

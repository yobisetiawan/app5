import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AvatarWidgetScreen extends StatelessWidget {
  const AvatarWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Avatar Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              GFAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                size: 150.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: YbText(
                  'Avatar large',
                  type: YbTextType.titleLarge,
                ),
              ),
              GFAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/200'),
                size: GFSize.LARGE,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: YbText(
                  'Avatar Medium',
                  type: YbTextType.titleLarge,
                ),
              ),
              GFAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/400'),
                size: GFSize.MEDIUM,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: YbText(
                  'Avatar Small',
                  type: YbTextType.titleLarge,
                ),
              ),
              GFAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                size: GFSize.SMALL,
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

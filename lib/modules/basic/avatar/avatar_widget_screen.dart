import 'package:app5/components/Avatar/yb_avatar.dart';
import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

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
            children: [
              const YbAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                size: 100,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: YbText(
                  'Avatar large',
                  type: YbTextType.titleLarge,
                ),
              ),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                direction: Axis.vertical,
                children: const [
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.large,
                    shape: YbAvatarShape.box,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.large,
                    shape: YbAvatarShape.box,
                    roundedSize: YbAvatarRoundedSize.large,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.large,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: YbText(
                  'Avatar Medium',
                  type: YbTextType.titleLarge,
                ),
              ),
              Wrap(
                spacing: 10.0,
                children: const [
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.medium,
                    shape: YbAvatarShape.box,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.medium,
                    shape: YbAvatarShape.box,
                    roundedSize: YbAvatarRoundedSize.medium,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.medium,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: YbText(
                  'Avatar Small',
                  type: YbTextType.titleLarge,
                ),
              ),
              Wrap(
                spacing: 10.0,
                children: const [
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.small,
                    shape: YbAvatarShape.box,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.small,
                    shape: YbAvatarShape.box,
                    roundedSize: YbAvatarRoundedSize.small,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.small,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: YbText(
                  'Avatar Extra Small',
                  type: YbTextType.titleLarge,
                ),
              ),
              Wrap(
                spacing: 10.0,
                children: const [
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.extraSmall,
                    shape: YbAvatarShape.box,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.extraSmall,
                    shape: YbAvatarShape.box,
                    roundedSize: YbAvatarRoundedSize.extraSmall,
                  ),
                  YbAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
                    size: YbAvatarSize.extraSmall,
                  ),
                ],
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

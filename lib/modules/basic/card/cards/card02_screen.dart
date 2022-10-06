import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

class Card02Screen extends StatelessWidget {
  const Card02Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Card02 Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const YbText(
            'This is text with title large 2',
            type: YbTextType.titleLarge,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Card(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/10/5/5f97c4ca-71fc-4dac-af1d-62b802ecfaf2.jpg.webp?ect=3g'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:app5/components/Card/Cards/yb_card02.dart';
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
            'Sample Card 02',
            type: YbTextType.titleLarge,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const YbCard02(
            image: NetworkImage(
              'https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/10/5/5f97c4ca-71fc-4dac-af1d-62b802ecfaf2.jpg.webp?ect=3g',
            ),
          ),
          const YbCard02(
            image: NetworkImage(
              'https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/10/5/08e9e01d-66c7-479d-970e-96d758aef9bb.jpg.webp?ect=3g',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const YbText(
            'Sample In List view',
            type: YbTextType.titleLarge,
          ),
          const SizedBox(
            height: 20.0,
          ),

          
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                YbCard02(
                  width: 300,
                  height: 100,
                  image: NetworkImage(
                    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/10/5/5f97c4ca-71fc-4dac-af1d-62b802ecfaf2.jpg.webp?ect=3g',
                  ),
                ),
                YbCard02(
                  width: 300,
                  height: 100,
                  image: NetworkImage(
                    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/10/5/08e9e01d-66c7-479d-970e-96d758aef9bb.jpg.webp?ect=3g',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

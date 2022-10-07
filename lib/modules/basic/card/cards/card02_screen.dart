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
                YbCard02(
                  width: 300,
                  height: 100,
                  image: NetworkImage(
                    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/10/5/5f97c4ca-71fc-4dac-af1d-62b802ecfaf2.jpg.webp?ect=3g',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const YbText(
            'Sample In Grid view',
            type: YbTextType.titleLarge,
          ),
          const SizedBox(
            height: 20.0,
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: (177 / 88),
            physics:
                const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            shrinkWrap: true, // You won't see infinite size error
            children: const <Widget>[
              YbCard02(
                image: NetworkImage(
                  'https://images.tokopedia.net/img/cache/400/RInQea/2022/10/5/deedf341-4bd3-4c74-a609-d165c56b42af.jpg.webp?ect=4g',
                ),
              ),
              YbCard02(
                image: NetworkImage(
                  'https://images.tokopedia.net/img/cache/400/RInQea/2022/10/5/a069fd05-0478-44c5-ab95-14b4d61ba4dc.jpg.webp?ect=4g',
                ),
              ),
              YbCard02(
                image: NetworkImage(
                  'https://images.tokopedia.net/img/cache/400/RInQea/2022/10/5/cd3d6157-c2e1-4306-a92d-29fb916b70ee.jpg.webp?ect=4g',
                ),
              ),
              YbCard02(
                image: NetworkImage(
                  'https://images.tokopedia.net/img/cache/400/RInQea/2022/10/5/b063eb42-b821-4984-a3aa-090f5c409d85.jpg.webp?ect=4g',
                ),
              ),
            ],
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
            height: 231,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                YbCard02(
                  width: 132,
                  height: 231,
                  image: NetworkImage(
                    'https://images.tokopedia.net/img/SuMXtx/2022/10/4/1a950eac-a166-464b-ae99-f61a44ab8c9e.jpg?ect=4g',
                  ),
                ),
                YbCard02(
                  width: 132,
                  height: 231,
                  image: NetworkImage(
                    'https://images.tokopedia.net/img/SuMXtx/2022/10/1/7c27b072-7a99-4c24-895e-a96f674156f0.jpg?ect=4g',
                  ),
                ),
                YbCard02(
                  width: 132,
                  height: 231,
                  image: NetworkImage(
                    'https://images.tokopedia.net/img/SuMXtx/2022/10/7/5700aa3c-c791-4fc9-aeba-8036432a4eaf.jpg?ect=4g',
                  ),
                ),
                YbCard02(
                  width: 132,
                  height: 231,
                  image: NetworkImage(
                    'https://images.tokopedia.net/img/SuMXtx/2022/10/3/278fbd47-5ffd-461f-9852-05b6722cbd2c.jpg?ect=4g',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

class Card03Screen extends StatelessWidget {
  const Card03Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Card03 Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const YbText(
            'This is Card 03',
            type: YbTextType.titleLarge,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 230,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Card(
                  child: SizedBox(
                    width: 130,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://images.tokopedia.net/img/SuMXtx/2022/10/7/5700aa3c-c791-4fc9-aeba-8036432a4eaf.jpg?ect=4g',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              YbText(
                                'dbE DJ80 Foldable DJ Headphone with Detachable Microphone',
                                maxLines: 2,
                              ),
                              YbText(
                                'Rp 350.000',
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.0),
                            topLeft: Radius.circular(8.0),
                          ),
                          color: Colors.grey,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://images.tokopedia.net/img/SuMXtx/2022/10/7/5700aa3c-c791-4fc9-aeba-8036432a4eaf.jpg?ect=4g',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: const [
                            YbText(
                              'This is Card 03',
                            ),
                            YbText(
                              'Rp 350.000',
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

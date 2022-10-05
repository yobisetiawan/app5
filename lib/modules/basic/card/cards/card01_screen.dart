import 'package:app5/components/Card/CardContents/yb_card_content01.dart';
import 'package:app5/components/Card/Cards/yb_card01.dart';
import 'package:app5/components/Card/yb_card.dart';
import 'package:app5/components/Text/text_styles.dart';

import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

class Card01Screen extends StatelessWidget {
  const Card01Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listMenu = [
      {'title': 'Promo Hari Ini'},
      {'title': 'Lihat Semua'},
      {'title': 'Toserba'},
      {'title': 'Komputer & Laptop'},
      {'title': 'Topup & Tagihan'},
      {'title': 'Travel & kereta'},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Card01 Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          YbCard01(
            children: [
              YbCardContent01(
                isExpanded: true,
                image: const FlutterLogo(
                  size: 15.0,
                ),
                imageTitle: const YbText(
                  'GoPay',
                  type: YbTextType.subtitle,
                ),
                title: YbText(
                  'Rp 18.000',
                  style: TextStyles(context)
                      .getBodyStyle()
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                subTitle: const YbText(
                  '0 Coint',
                  type: YbTextType.subtitle,
                ),
              ),
              const VerticalDivider(),
              YbCardContent01(
                isExpanded: true,
                image: const FlutterLogo(
                  size: 15.0,
                ),
                imageTitle: const YbText(
                  'Rewards',
                  type: YbTextType.subtitle,
                ),
                title: YbText(
                  'Silver',
                  style: TextStyles(context)
                      .getBodyStyle()
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                subTitle: const YbText(
                  '11 kupon belum digunakan',
                  type: YbTextType.subtitle,
                ),
              ),
            ],
          ),
          YbCard01(
            children: [
              YbCardContent01(
                isExpanded: true,
                crossAxisAlignment: CrossAxisAlignment.center,
                topImage: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FlutterLogo(
                    size: 30.0,
                  ),
                ),
                title: YbText(
                  'Rp 0',
                  style: TextStyles(context)
                      .getBodyStyle()
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                subTitle: const YbText(
                  '0 Coins',
                  type: YbTextType.subtitle,
                ),
              ),
              const VerticalDivider(),
              YbCardContent01(
                isExpanded: true,
                crossAxisAlignment: CrossAxisAlignment.center,
                topImage: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FlutterLogo(
                    size: 30.0,
                  ),
                ),
                title: YbText(
                  'Rp 0',
                  style: TextStyles(context)
                      .getBodyStyle()
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                subTitle: const YbText(
                  '0 Coins',
                  type: YbTextType.subtitle,
                ),
              ),
              const VerticalDivider(),
              YbCardContent01(
                isExpanded: true,
                crossAxisAlignment: CrossAxisAlignment.center,
                topImage: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FlutterLogo(
                    size: 30.0,
                  ),
                ),
                title: YbText(
                  'Rp 18.000',
                  style: TextStyles(context)
                      .getBodyStyle()
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                subTitle: const YbText(
                  'Saldo Tokopedia',
                  type: YbTextType.subtitle,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: listMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => YbCard(
                    width: 70.0,
                    child: YbCardContent01(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      topImage: const FlutterLogo(
                        size: 24.0,
                      ),
                      subTitle: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: YbText(
                          listMenu[index]['title']!,
                          type: YbTextType.subtitle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

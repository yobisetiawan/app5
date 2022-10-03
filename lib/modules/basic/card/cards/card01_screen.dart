import 'package:app5/components/Card/Card01/yb_card01.dart';
import 'package:app5/components/Text/text_styles.dart';
import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

class Card01Screen extends StatelessWidget {
  const Card01Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Card01 Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          YbCard01(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          FlutterLogo(
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          YbText('Go Pay'),
                        ],
                      ),
                      YbText(
                        'Rp 18.000',
                        style: TextStyles(context)
                            .getBodyStyle()
                            .copyWith(fontWeight: FontWeight.bold, fontSize: 11.0),
                      )
                    ],
                  ),
                ),
              ),
              const VerticalDivider(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          FlutterLogo(
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          YbText('Go Coin'),
                        ],
                      ),
                      YbText(
                        'Rp 18.000',
                        style: TextStyles(context)
                            .getBodyStyle()
                            .copyWith(fontWeight: FontWeight.bold, fontSize: 11.0),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:app5/components/Button/yb_btn.dart';
import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/modules/basic/window/modals/circular_modal.dart';
import 'package:app5/modules/basic/window/modals/floating_modal.dart';
import 'package:app5/modules/basic/window/modals/modal_complex_all.dart';
import 'package:app5/modules/basic/window/modals/modal_fit.dart';
import 'package:app5/modules/basic/window/modals/modal_inside_modal.dart';
import 'package:app5/modules/basic/window/modals/modal_will_scope.dart';
import 'package:app5/modules/basic/window/modals/modal_with_navigator.dart';
import 'package:app5/modules/basic/window/modals/modal_with_nested_scroll.dart';
import 'package:app5/modules/basic/window/modals/modal_with_page_view.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class WindowScreen extends StatelessWidget {
  const WindowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Window Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          YbButton(
            child: const YbText('Material Fit'),
            onPressed: () => showMaterialModalBottomSheet(
              context: context,
              expand: false,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalFit(),
            ),
          ),
          YbButton(
            child: const YbText('Bar Modal'),
            onPressed: () => showBarModalBottomSheet(
              expand: true,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalInsideModal(),
            ),
          ),
          YbButton(
            child: const YbText('Avatar Modal'),
            onPressed: () => showAvatarModalBottomSheet(
              expand: true,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalInsideModal(),
            ),
          ),
          YbButton(
            child: const YbText('Float Modal'),
            onPressed: () => showFloatingModalBottomSheet(
              context: context,
              builder: (context) => const ModalFit(),
            ),
          ),
          YbButton(
            child: const YbText('Cupertino Material Fit'),
            onPressed: () => showCupertinoModalBottomSheet(
              context: context,
              expand: false,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalFit(),
            ),
          ),
          YbButton(
            child: const YbText('Cupertino Small Modal forced to expand'),
            onPressed: () => showCupertinoModalBottomSheet(
              context: context,
              expand: true,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalFit(),
            ),
          ),
          YbButton(
            child: const YbText('Reverse list'),
            onPressed: () => showBarModalBottomSheet(
              context: context,
              expand: true,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalInsideModal(reverse: true),
            ),
          ),
          YbButton(
            child: const YbText('Cupertino Modal inside modal'),
            onPressed: () => showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalInsideModal(),
            ),
          ),
          YbButton(
            child: const YbText('Cupertino Modal with inside navigation'),
            onPressed: () => showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalWithNavigator(),
            ),
          ),
          YbButton(
            child: const YbText('Cupertino Navigator + Scroll + WillPopScope'),
            onPressed: () => showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const ComplexModal(),
            ),
          ),
          YbButton(
            child: const YbText('Modal with WillPopScope'),
            onPressed: () => showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const ModalWillScope(),
            ),
          ),
          YbButton(
            child: const YbText('Modal with Nested Scroll'),
            onPressed: () => showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => const NestedScrollModal(),
            ),
          ),
          YbButton(
            child: const YbText('Modal with PageView'),
            onPressed: () => showBarModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => const ModalWithPageView(),
            ),
          ),
        ],
      ),
    );
  }
}

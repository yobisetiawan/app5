import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Text("hello".tr),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var loc = const Locale('en', 'US');
          if (Get.locale == loc) {
            loc = const Locale('id', 'ID');
          }
          Get.updateLocale(loc);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.language),
      ),
    );
  }
}

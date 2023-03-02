import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_page_controller.dart';

class OfferPageView extends GetView<OfferPageController> {
  const OfferPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OfferPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OfferPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:cashkingdemo/app/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/offer_page_controller.dart';

class OfferPageView extends GetView<OfferPageController> {
  const OfferPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
            colors: [
              Color(0xFF1185D5),
              Color(0xFF33C1EF),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  splashRadius: 20,
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Offer detail",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              ),
              Container(
                padding: const EdgeInsets.only(top: 23, left: 21, right: 21),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(11),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 109,
                          width: 109,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 14),
                          width: Get.width * 0.65,
                          height: 109,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Worksection",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                "Focus on your project, we'll take care of the routine",
                                style: TextStyle(color: Color(0xff9E9E9E)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: RatingBarIndicator(
                                  rating: 2.75,
                                  itemBuilder: (context, index) =>
                                      SvgPicture.asset(
                                          'assets/svg/star_icon.svg'),
                                  itemCount: 5,
                                  itemSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 29, bottom: 19),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    const Text(
                      "Steps (1/4)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 120,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      'assets/svg/bolt_sign.svg',
                      width: 10,
                      height: 20,
                    ),
                  ),
                  const Text(
                    "23,567 users has already participated",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                    colors: [
                      Color(0xFF1185D5),
                      Color(0xFF33C1EF),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(14.0)),
                ),
                child: const Text(
                  'Get ₹364',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

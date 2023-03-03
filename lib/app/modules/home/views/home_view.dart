import 'package:cashkingdemo/app/components/custom_offer_card.dart';
import 'package:cashkingdemo/app/components/custom_trending_offer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../components/custom_appbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: 183,
          child: Column(
            children: [
              AppBar(
                leading: Builder(builder: (context) {
                  return IconButton(
                    icon: SvgPicture.asset('assets/svg/drawer_icon.svg'),
                    splashRadius: 20,
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  );
                }),
                title: const Text(
                  "Hey Shubham",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                actions: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 21, vertical: 21),
                    height: 37,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: const Color(0xff33C1EF),
                        radius: 14.5,
                        child:
                            SvgPicture.asset('assets/svg/wallet_home_icon.svg'),
                      ),
                      label: const Text(
                        '₹ 452',
                        style: TextStyle(
                          color: Color(0xff242424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.5),
                        ),
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        elevation: 8,
                      ),
                    ),
                  ),
                ],
                toolbarHeight: 80,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Container(
                height: 79,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(11),
                    topRight: Radius.circular(11),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 93,
                        height: 79,
                        decoration: const BoxDecoration(
                          color: Color(0xffEEF7FF),
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff0085FF),
                              width: 3,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/svg/all_offer_icon.svg'),
                            const SizedBox(height: 8.5),
                            const Text(
                              "All Offers",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 93,
                        height: 79,
                        // decoration: const BoxDecoration(
                        //   color: Color(0xffEEF7FF),
                        //   border: Border(
                        //     bottom: BorderSide(
                        //       color: Color(0xff0085FF),
                        //       width: 3,
                        //     ),
                        //   ),
                        // ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/svg/gift_icon.svg'),
                            const SizedBox(height: 8.5),
                            const Text(
                              "Gifts",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 93,
                        height: 79,
                        // decoration: const BoxDecoration(
                        //   color: Color(0xffEEF7FF),
                        //   border: Border(
                        //     bottom: BorderSide(
                        //       color: Color(0xff0085FF),
                        //       width: 3,
                        //     ),
                        //   ),
                        // ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/svg/upcoming_icon.svg'),
                            const SizedBox(height: 8.5),
                            const Text(
                              "Upcoming",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 93,
                        height: 79,
                        // decoration: const BoxDecoration(
                        //   color: Color(0xffEEF7FF),
                        //   border: Border(
                        //     bottom: BorderSide(
                        //       color: Color(0xff0085FF),
                        //       width: 3,
                        //     ),
                        //   ),
                        // ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/svg/my_offer_icon.svg'),
                            const SizedBox(height: 8.5),
                            const Text(
                              "My Offers",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: SvgPicture.asset('assets/svg/trending_icon.svg'),
                    ),
                    const Text(
                      "Trending Offers",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 216,
                width: Get.width,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const CustomTrendingOfferCard(
                    color: Color(0xff200114),
                    url:
                        "https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg",
                    title: "Alto's Odysseyz",
                    amount: 230,
                    lead: 4687,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: SvgPicture.asset('assets/svg/more_offer_icon.svg'),
                    ),
                    const Text(
                      "More Offers",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                      ),
                    )
                  ],
                ),
              ),
              // ListView.builder(itemBuilder:(context, index) => CustomOfferListCard(color: color, url: url, title: title, amount: amount, lead: lead),)
            ],
          ),
        ));
  }
}

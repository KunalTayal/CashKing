import 'package:cashkingdemo/app/components/custom_offer_card.dart';
import 'package:cashkingdemo/app/components/custom_trending_offer_card.dart';
import 'package:cashkingdemo/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

import '../../../components/custom_appbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 39, bottom: 10),
                      child: CircleAvatar(
                        radius: 66,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 62,
                          backgroundColor: Colors.blue,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/3135/3135768.png'),
                            radius: 57,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Text(
                        "Shubham Kumar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text(
                        "shubhamkumar@cashup.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading:
                    SvgPicture.asset('assets/svg/my_offer_drawer_icon.svg'),
                title: const Text(
                  "My Offers",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                trailing: SvgPicture.asset('assets/svg/forward_icon.svg'),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/svg/app_usage_icon.svg'),
                title: const Text(
                  "App Usage",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                trailing: SvgPicture.asset('assets/svg/forward_icon.svg'),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/svg/support_icon.svg'),
                title: const Text(
                  "Support",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                trailing: SvgPicture.asset('assets/svg/open_in_new.svg'),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/svg/term_cond_icon.svg'),
                title: const Text(
                  "Terms & Conditions",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                trailing: SvgPicture.asset('assets/svg/open_in_new.svg'),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/svg/privacy_policy_icon.svg'),
                title: const Text(
                  "Privacy Policy",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                trailing: SvgPicture.asset('assets/svg/open_in_new.svg'),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/svg/rate_icon.svg'),
                title: const Text(
                  "Rate Us",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                trailing: SvgPicture.asset('assets/svg/forward_icon.svg'),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/svg/lang_icon.svg'),
                title: const Text(
                  "Language",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                trailing: Text(
                  "ENG",
                  style: GoogleFonts.mulish(
                    color: const Color(0xffB4B4B4),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/svg/logout_icon.svg'),
                title: const Text(
                  "Logout",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                contentPadding: const EdgeInsets.only(left: 28, right: 32),
                onTap: () {},
              ),
              const Divider(),
              SizedBox(
                height: 129,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 16),
                      child: Text(
                        "Follow us",
                        style: GoogleFonts.mulish(fontSize: 12),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: SvgPicture.asset('assets/svg/fb_icon.svg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23.0),
                          child: SvgPicture.asset('assets/svg/ig_icon.svg'),
                        ),
                        SvgPicture.asset('assets/svg/yt_icon.svg'),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: CustomAppBar(
          height: 183,
          child: Column(
            children: [
              AppBar(
                // leading: IconButton(
                //   icon: SvgPicture.asset('assets/svg/drawer_icon.svg'),
                //   splashRadius: 20,
                //   onPressed: () {},
                // ),
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
                      onTap: () {
                        controller.currentIndex.value = 0;
                        controller.pageController
                            .jumpToPage(controller.currentIndex.value);
                      },
                      child: Obx(() {
                        return Container(
                          width: 93,
                          height: 79,
                          decoration: controller.currentIndex.value == 0
                              ? const BoxDecoration(
                                  color: Color(0xffEEF7FF),
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0085FF),
                                      width: 3,
                                    ),
                                  ),
                                )
                              : const BoxDecoration(
                                  color: Colors.white,
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
                        );
                      }),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.currentIndex.value = 1;
                        controller.pageController
                            .jumpToPage(controller.currentIndex.value);
                      },
                      child: Obx(() {
                        return Container(
                          width: 93,
                          height: 79,
                          decoration: controller.currentIndex.value == 1
                              ? const BoxDecoration(
                                  color: Color(0xffEEF7FF),
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0085FF),
                                      width: 3,
                                    ),
                                  ),
                                )
                              : const BoxDecoration(
                                  color: Colors.white,
                                ),
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
                        );
                      }),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.currentIndex.value = 2;
                        controller.pageController
                            .jumpToPage(controller.currentIndex.value);
                      },
                      child: Obx(() {
                        return Container(
                          width: 93,
                          height: 79,
                          decoration: controller.currentIndex.value == 2
                              ? const BoxDecoration(
                                  color: Color(0xffEEF7FF),
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0085FF),
                                      width: 3,
                                    ),
                                  ),
                                )
                              : const BoxDecoration(
                                  color: Colors.white,
                                ),
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
                        );
                      }),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.currentIndex.value = 3;
                        controller.pageController
                            .jumpToPage(controller.currentIndex.value);
                      },
                      child: Obx(() {
                        return Container(
                          width: 93,
                          height: 79,
                          decoration: controller.currentIndex.value == 3
                              ? const BoxDecoration(
                                  color: Color(0xffEEF7FF),
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0085FF),
                                      width: 3,
                                    ),
                                  ),
                                )
                              : const BoxDecoration(
                                  color: Colors.white,
                                ),
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
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF1FCFF),
        body: PageView(
          controller: controller.pageController,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    height: 28,
                    margin: const EdgeInsets.only(top: 10),
                    color: const Color(0xffE4EEF0),
                    child: Marquee(
                      text:
                          'Sameer earned ₹452 from BookMyShow Offer.   Rakesh earned ₹120 from BookMyShow Offer.',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      scrollAxis: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      blankSpace: 20.0,
                      velocity: 20.0,
                      pauseAfterRound: const Duration(seconds: 1),
                      startPadding: 10.0,
                      accelerationDuration: const Duration(seconds: 1),
                      accelerationCurve: Curves.linear,
                      decelerationDuration: const Duration(milliseconds: 500),
                      decelerationCurve: Curves.easeOut,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 19, top: 14, bottom: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 10),
                          child:
                              SvgPicture.asset('assets/svg/trending_icon.svg'),
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
                      itemBuilder: (context, index) => CustomTrendingOfferCard(
                        color: const Color(0xff200114),
                        url:
                            "https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg",
                        title: "Alto's Odysseyz",
                        amount: 230,
                        lead: 4687,
                        onPressed: () {
                          Get.toNamed(Routes.offerPage);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 19, top: 19, bottom: 7),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 10),
                          child: SvgPicture.asset(
                              'assets/svg/more_offer_icon.svg'),
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
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => CustomOfferListCard(
                      color: const Color(0xff200114),
                      url:
                          "https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg",
                      title: "Alto's Odysseyz",
                      amount: 230,
                      lead: 4687,
                      onPressed: () {
                        Get.toNamed(Routes.offerPage);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text("Gifts"),
            ),
            const Center(
              child: Text("Upcoming Offers"),
            ),
            const Center(
              child: Text("My Offers"),
            ),
          ],
          onPageChanged: (value) {
            controller.currentIndex.value = value;
          },
        ));
  }
}

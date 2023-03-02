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
      drawer: IconButton(
        icon: SvgPicture.asset('assets/svg/drawer_icon.svg'),
        splashRadius: 20,
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      appBar: CustomAppBar(
        child: Column(
          children: [
            AppBar(
              title: const Text(
                "Hey Shubham",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: 14.5,
                    child: SvgPicture.asset('assets/svg/wallet_home_icon.svg'),
                  ),
                  label: const Text(
                    '₹ 452',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

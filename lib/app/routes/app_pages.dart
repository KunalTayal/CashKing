import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/offer_page/bindings/offer_page_binding.dart';
import '../modules/offer_page/views/offer_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.offerPage,
      page: () => OfferPageView(index: 0,),
      binding: OfferPageBinding(),
    ),
  ];
}

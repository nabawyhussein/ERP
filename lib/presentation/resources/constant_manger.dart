// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations"
// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys

import 'dart:ui';

import 'package:labeeb_front/presentation/resources/app_string.dart';
import 'package:labeeb_front/presentation/resources/routes_manger.dart';

import '../../models/home_model/home_model.dart';
import '../../models/on_boarding_model/on_boarding_model.dart';

class AppConstant {
  static const int splashDelay = 1;
  static const int splashAnimationDelay = 2;
  static const Duration kExpand = Duration(milliseconds: 200);
  static Locale? locale;
  static const Locale arabic = Locale('ar');
  static const Locale english = Locale('en');
  static List<PageModel> onBoardingLists = [
    PageModel(
        //   img: "assets/images/on_boarding1.png",
        img: "assets/lottie/onBoarding.json",
        titleTxt: "عنوان الصفحة",
        des: "قم بإدارة جميع معاملاتك المالية \nمع أقوى نظام بين منافسيه"),
    PageModel(
        img: "assets/lottie/reportdiagram.json",
        //  img: "assets/images/on_boarding2.png",
        titleTxt: "عنوان الصفحة",
        des: "تابع معنا جميع الحركات المالية الخاصة بمنشأتك"),
    PageModel(
        img: "assets/lottie/accountant.json",
        //  img: "assets/images/on_boarding3.png",
        titleTxt: "عنوان الصفحة",
        des: "قم بمراجعة و تدقيق العمليات المالية\n في أي مكان كنت"),
  ];
  static List<HomeModel> homeList = [
    HomeModel(
        txtAr: AppString.treasuryAndBondsAra,
        txtEn: AppString.treasuryAndBondsEng,
        nextScreen: Routes.treasuryAndBondsScreens),
    HomeModel(
        txtAr: AppString.customersAndSuppliersAra,
        txtEn: AppString.customersAndSuppliersEng,
        nextScreen: Routes.customersAndSuppliersScreen),
    HomeModel(
        txtAr: AppString.invoicesAra,
        txtEn: AppString.invoicesEng,
        nextScreen: Routes.invoicesScreen),
    HomeModel(
        txtAr: AppString.dailyNoteBookAra,
        txtEn: AppString.dailyNoteBookEng,
        nextScreen: Routes.dailyRestrictionsScreen),
    HomeModel(
        txtAr: AppString.pricesOffersAra,
        txtEn: AppString.pricesOffersEng,
        nextScreen: Routes.pricesOffersScreen),
    HomeModel(
        txtAr: AppString.inventoryAra,
        txtEn: AppString.inventoryEng,
        nextScreen: Routes.startScreen),
  ];
}

const Locale arabic = Locale('ar');
const Locale english = Locale('en');

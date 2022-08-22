// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations"
// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys


import 'dart:ui';
import 'package:labeeb_front/presentation/resources/app_string.dart';
import 'package:labeeb_front/presentation/resources/routes_manger.dart';

import '../../models/home_model/home_model.dart';
import '../../models/on_boarding_model/on_boarding_model.dart';
import 'assets_manger.dart';

class AppConstant {
  static const int splashDelay = 1;
  static const int splashAnimationDelay = 2;
  static const Duration kExpand = Duration(milliseconds: 200);
  static Locale? locale;
  static const Locale arabic = Locale('ar');
  static const Locale english = Locale('en');
  static List<PageModel> lists = [
    PageModel(
        //   img: "assets/images/on_boarding1.png",
        img: AppImages.appLogo,
        titleTxt: "عنوان الصفحة",
        des:
            "نص تعبيري يعبر عن شرح التطبيق وما ستفعله \n نص تعبيري يعبر عن شرح التطبيق وما ستفعله"),
    PageModel(
        img: AppImages.appLogo,
        //  img: "assets/images/on_boarding2.png",
        titleTxt: "عنوان الصفحة",
        des:
            "نص تعبيري يعبر عن شرح التطبيق وما ستفعله \n نص تعبيري يعبر عن شرح التطبيق وما ستفعله"),
    PageModel(
        img: AppImages.appLogo,
        //  img: "assets/images/on_boarding3.png",
        titleTxt: "عنوان الصفحة",
        des:
            "نص تعبيري يعبر عن شرح التطبيق وما ستفعله \n نص تعبيري يعبر عن شرح التطبيق وما ستفعله"),
  ];
  static List<HomeModel> homeList = [
    HomeModel(txtAr: AppString.treasuryAndBondsAra,txtEn: AppString.treasuryAndBondsEng,nextScreen: Routes.treasuryAndBondsScreens),
    HomeModel(txtAr: AppString.customersAndSuppliersAra,txtEn: AppString.customersAndSuppliersEng,nextScreen: Routes.customersAndSuppliersScreen),
    HomeModel(txtAr: AppString.invoicesAra,txtEn: AppString.invoicesEng,nextScreen: Routes.invoicesScreen),
    HomeModel(txtAr: AppString.dailyNoteBookAra,txtEn: AppString.dailyNoteBookEng,nextScreen: Routes.startScreen),
    HomeModel(txtAr: AppString.pricesOffersAra,txtEn: AppString.pricesOffersEng,nextScreen: Routes.startScreen),
    HomeModel(txtAr: AppString.inventoryAra,txtEn: AppString.inventoryEng,nextScreen: Routes.startScreen),
  ];
}

const Locale arabic =Locale('ar');
const Locale english =Locale('en');

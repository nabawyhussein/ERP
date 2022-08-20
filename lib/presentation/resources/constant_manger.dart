// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations"
// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys


import 'dart:ui';
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
    HomeModel(activeTxt: "first",icon: AppIcons.appOrdersIcon),
    HomeModel(activeTxt: "seconde",icon: AppIcons.appShippingBoxIcon),
    HomeModel(activeTxt: "third",icon: AppIcons.appLibraryBooksIcon),
  ];
}

const Locale arabic =Locale('ar');
const Locale english =Locale('en');

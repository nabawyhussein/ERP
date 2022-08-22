import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/resources/font_manger.dart';

import '../../common_widget/build_button_widget.dart';
import '../../common_widget/build_logo_widget.dart';
import '../../resources/app_string.dart';
import '../../resources/constant_manger.dart';
import '../../resources/routes_manger.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const BuildLogoWidget(),
            SizedBox(
              height: AppSize.size(context).height * .018,
            ),
            const Spacer(),
            BuildButtonWidget(
                txt: AppString.arabic,
                darkGrey: true,
                onPressed: () async {
                  await context.setLocale(AppConstant.arabic);
                  AppConstant.locale = const Locale('ar');
                  Navigator.pushReplacementNamed(
                      context, Routes.onBoardingScreen);
                }),
            SizedBox(
              height: AppSize.size(context).height * .018,
            ),
            BuildButtonWidget(
                txt: AppString.english,
                onPressed: () async {
                  await context.setLocale(AppConstant.english);
                  AppConstant.locale = const Locale('en');
                  Navigator.pushReplacementNamed(
                      context, Routes.onBoardingScreen);
                }),
            SizedBox(
              height: AppSize.size(context).height * .04,
            ),
          ],
        ),
      ),
    );
  }
}

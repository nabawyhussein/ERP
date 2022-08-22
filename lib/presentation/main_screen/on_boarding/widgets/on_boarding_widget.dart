import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';
import 'package:labeeb_front/presentation/resources/font_manger.dart';
import 'package:labeeb_front/presentation/resources/style_manger.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../translations/locale_keys.g.dart';
import '../../../common_widget/build_button_widget.dart';
import '../../../resources/constant_manger.dart';
import '../../../resources/routes_manger.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget(
      {Key? key, required this.controller, required this.pos})
      : super(key: key);
  final PageController controller;
  final int pos;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppSize.size(context).height * .12,
          ),
          Lottie.asset(AppConstant.onBoardingLists[pos].img!,
              fit: BoxFit.contain, height: AppSize.size(context).height * .4),
          Spacer(),
          buildCircleWidget(),
          SizedBox(
            height: AppSize.size(context).height * .05,
          ),
          // Text(AppConstant.onBoardingLists[pos].titleTxt!,
          //     style: getRegularStyle(
          //         fontSize: AppSize.size(context).width * .043,
          //         color: ColorManger.black)),
          SizedBox(
            height: AppSize.size(context).height * .008,
          ),
          Text(AppConstant.onBoardingLists[pos].des!,style: getRegularStyle(
              fontSize: AppSize.size(context).width * .043,
              color: ColorManger.black),
          textAlign: TextAlign.center,
          ),
          SizedBox(
            height: AppSize.size(context).height * .05,
          ),
          // Spacer(),
          BuildButtonWidget(txt: LocaleKeys.next.tr(), onPressed: () {
            if (pos == 0) {
              controller.animateTo(
                  MediaQuery.of(context).size.width,
                  duration:
                  const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            }
            else if (pos == 1)
            {
              controller.animateTo(
                  MediaQuery.of(context).size.width *
                      (pos + 1),
                  duration:
                  const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            } 
            else if (pos == 2) {

              Navigator.pushNamed(context, Routes.loginScreen);
            }
          }),
          SizedBox(
            height: AppSize.size(context).height * .018,
          ),
          BuildButtonWidget(
            txt: LocaleKeys.skip.tr(),
            darkGrey: true,
            onPressed: () => Navigator.pushNamed(context, Routes.loginScreen),
          ),
          SizedBox(
            height: AppSize.size(context).height * .02,
          ),
        ],
      ),
    );
  }

  buildCircleWidget() {
    return SmoothPageIndicator(
        controller: controller, // PageController
        count: AppConstant.onBoardingLists.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: ColorManger.primary,
          dotWidth: 12.0,
          dotHeight: 8.0,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
        ), // your preferred effect
        onDotClicked: (index) {});
  }
}

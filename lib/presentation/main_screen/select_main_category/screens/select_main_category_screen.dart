import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/main_screen/select_main_category/widgets/home_main_categories_builder_widget.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../common_widget/build_logo_widget.dart';
import '../../../common_widget/build_row_icon_drawer.dart';
import '../../../resources/assets_manger.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class SelectMainCategoryScreen extends StatelessWidget {
  const SelectMainCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.size(context).width * .05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BuildRowIconDrawer(),
                  SizedBox(
                    height: AppSize.size(context).height * .01,
                  ),
                  const Center(
                      child: BuildLogoWidget(
                        img: AppImages.appLogo,
                      )),
                  //  Image.asset("assets/images/login.png",fit: BoxFit.contain,height: Constant.size(context).height * .35),
                  SizedBox(
                    height: AppSize.size(context).height * .03,
                  ),
                  Center(
                    child: Text(
                      LocaleKeys.welcomeToTheLabeebApp.tr(),
                      style: getRegularStyle(
                          fontSize: AppSize.size(context).width * .0465,
                          color: ColorManger.black),
                    ),
                  ),

                  const HomeMainCategoriesBuilderWidget() ,

                  // SizedBox(
                  //   height: AppSize.size(context).height * .01,
                  // ),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

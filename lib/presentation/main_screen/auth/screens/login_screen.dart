import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/build_logo_widget.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';
import 'package:labeeb_front/presentation/resources/font_manger.dart';
import 'package:labeeb_front/presentation/resources/style_manger.dart';

import '../../../../translations/locale_keys.g.dart';
import '../../../common_widget/build_button_widget.dart';
import '../../../common_widget/build_text_field.dart';
import '../../../resources/assets_manger.dart';
import '../../../resources/routes_manger.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.size(context).width * .05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppSize.size(context).height * .02,
                    ),
                    const Center(
                        child: BuildLogoWidget(
                      img: AppImages.appSignIn,
                    )),
                    //  Image.asset("assets/images/login.png",fit: BoxFit.contain,height: Constant.size(context).height * .35),
                    SizedBox(
                      height: AppSize.size(context).height * .05,
                    ),
                    Center(
                      child: Text(
                        LocaleKeys.welcomeToTheLabeebApp.tr(),
                        style: getRegularStyle(
                            fontSize: AppSize.size(context).width * .0465,
                            color: ColorManger.black),
                      ),
                    ),
                    SizedBox(
                      height: AppSize.size(context).height * .009,
                    ),
                    Center(
                      child: Text(
                        LocaleKeys.makeYourDataSafe.tr(),
                        style: getRegularRobotoStyle(
                            fontSize: AppSize.size(context).width * .038,
                            color: ColorManger.grey),
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: AppSize.size(context).height * .025,
                    ),
                    BuildTextField(
                      controller: emailController,
                      labelText: "Atma@gmail.com",
                      svg: "assets/icons/email_icon.svg",
                      textInputType: TextInputType.emailAddress,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return LocaleKeys.enterYourEmail.tr();
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: AppSize.size(context).height * .013,
                    ),
                    BuildTextField(
                      controller: passwordController,
                      labelText: LocaleKeys.password.tr(),
                      svg: "assets/icons/password.svg",
                      password: true,
                      isSeen: true,
                    ),
                    SizedBox(
                      height: AppSize.size(context).height * .06,
                    ),
                    Center(
                      child: BuildButtonWidget(
                        txt: LocaleKeys.login.tr(),
                        onPressed: () {
                          if (formKey.currentState!.validate() == true) {
                            Navigator.pushNamed(context, Routes.selectMainCategoryScreen);
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppSize.size(context).height * .02,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.registerScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              LocaleKeys.youDonNotHaveAnAccount.tr(),
                              style: getRegularRobotoStyle(
                                  fontSize: AppSize.size(context).width * .038,
                                  color: ColorManger.grey),
                              // fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              width: AppSize.size(context).width * .01,
                            ),
                            Text(
                              LocaleKeys.registration.tr(),
                              style: getBoldStyle(
                                  fontSize: AppSize.size(context).width * .038,
                                  color: ColorManger.black),
                              // fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

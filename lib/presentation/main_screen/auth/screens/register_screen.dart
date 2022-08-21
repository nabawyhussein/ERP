import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/build_logo_widget.dart';

import '../../../../translations/locale_keys.g.dart';
import '../../../common_widget/build_button_widget.dart';
import '../../../common_widget/build_text_field.dart';
import '../../../resources/assets_manger.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
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
                    img: AppImages.appSignUp,
                  )),
                  //  Image.asset("assets/images/login.png",fit: BoxFit.contain,height: AppSize.size(context).height * .35),
                  SizedBox(
                    height: AppSize.size(context).height * .05,
                  ),
                  Center(
                    child: Text(
                      LocaleKeys.welcomeToTheLabeebApp.tr(),
                      style: getBoldStyle(
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
                    controller: firstNameController,
                    labelText: LocaleKeys.firstname.tr(),
                    svg: "assets/icons/name.svg",
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: AppSize.size(context).height * .013,
                  ),
                  BuildTextField(
                    controller: lastNameController,
                    labelText: LocaleKeys.lastname.tr(),
                    svg: "assets/icons/name.svg",
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: AppSize.size(context).height * .013,
                  ),
                  BuildTextField(
                    controller: phoneController,
                    labelText: LocaleKeys.phone.tr(),
                    svg: "assets/icons/mobile.svg",
                    textInputType: TextInputType.phone,
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
                    height: AppSize.size(context).height * .02,
                  ),
                  Center(
                    child: BuildButtonWidget(
                      txt: LocaleKeys.login.tr(),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: AppSize.size(context).height * .02,
                  ),
                  Center(
                    child: GestureDetector(
                      // onTap: () => Navigator.push(context, createRoute(LoginScreen())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            LocaleKeys.youDonNotHaveAnAccount.tr(),
                            style: getRegularRobotoStyle(
                                fontSize: AppSize.size(context).width * .038,
                                color: ColorManger.black),
                          ),
                          SizedBox(
                            width: AppSize.size(context).width * .01,
                          ),
                          Text(
                            LocaleKeys.login.tr(),
                            style: getBoldStyle(
                                fontSize: AppSize.size(context).width * .038,
                                color: ColorManger.primary),
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
    );
  }
}

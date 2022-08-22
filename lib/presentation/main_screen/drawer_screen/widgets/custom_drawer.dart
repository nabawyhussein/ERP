import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:labeeb_front/bloc/app_bloc/app_cubit.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';
import 'package:labeeb_front/presentation/resources/font_manger.dart';

import '../../../resources/constant_manger.dart';
import '../screen/drawer_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit customDrawerCubit = BlocProvider.of<AppCubit>(context);
        return ZoomDrawer(
          controller: customDrawerCubit.zoomDrawerController,
          borderRadius: 24,
          style: DrawerStyle.defaultStyle,
          openCurve: Curves.fastOutSlowIn,
          disableDragGesture: false,
          mainScreenTapClose: true,
          slideWidth: context.locale == arabic
              ? AppSize.size(context).width * 0.8
              : MediaQuery.of(context).size.width * 0.75,
          duration: const Duration(milliseconds: 500),
          menuBackgroundColor: ColorManger.primary,
          showShadow: true,
          angle: 0.0,
          clipMainScreen: true,
          mainScreen: child,
          menuScreen: const DrawerScreen(),
          isRtl: context.locale == arabic,
        );
      },
    );
  }
}

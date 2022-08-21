import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../bloc/app_bloc/app_cubit.dart';
import '../resources/assets_manger.dart';
import '../resources/color_manger.dart';
import '../resources/font_manger.dart';
import '../resources/style_manger.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style: getBoldStyle(
          fontSize: AppSize.size(context).width * .0465,
          color: ColorManger.white)) ,
      actions: [  BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          AppCubit customDrawerCubit =
          BlocProvider.of<AppCubit>(context);
          return IconButton(
            onPressed: () {
              print("DDOne");
              customDrawerCubit.toggleDrawer();
            },
            icon: SvgPicture.asset(AppIcons.appDrawerIcon,color: ColorManger.white),);
        },
      ),

      ],
      leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: () => Navigator.pop(context)) ,
    );
  }
}

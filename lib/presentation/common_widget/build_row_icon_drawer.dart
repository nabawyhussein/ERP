import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../bloc/app_bloc/app_cubit.dart';
import '../resources/assets_manger.dart';

class BuildRowIconDrawer extends StatelessWidget {
  const BuildRowIconDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        const Spacer(),
        BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            AppCubit customDrawerCubit = BlocProvider.of<AppCubit>(context);
            return IconButton(
              onPressed: () {
                print("DDOne");
                customDrawerCubit.toggleDrawer();
              },
              icon: SvgPicture.asset(AppIcons.appDrawerIcon),
            );
          },
        )
      ],
    );
  }
}

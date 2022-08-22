import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:labeeb_front/bloc/app_bloc/app_cubit.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';

class DrawerIcon extends StatelessWidget {
  late Color color;

  DrawerIcon({Key? key, this.color = ColorManger.primary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit customDrawerCubit = BlocProvider.of<AppCubit>(context);
        return IconButton(
          onPressed: () {
            print("DDOne");
            customDrawerCubit.toggleDrawer();
          },
          icon: Icon(FontAwesomeIcons.bars, size: 20.0, color: color),
        );
      },
    );
  }
}

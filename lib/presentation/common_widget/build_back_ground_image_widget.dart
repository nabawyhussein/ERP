import 'package:flutter/material.dart';

import '../main_screen/drawer_screen/widgets/custom_drawer.dart';
import '../resources/assets_manger.dart';

class BuildBackGroundImage extends StatelessWidget {
  const BuildBackGroundImage({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomDrawer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: const AssetImage(AppImages.backGround),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.white.withOpacity(.9), BlendMode.hardLight),
        )),
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../resources/constant_manger.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final pageIndexNotifier = ValueNotifier<int>(0);
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
          child: Scaffold(
        body: PageView.builder(
          controller: controller,
          itemCount: AppConstant.onBoardingLists.length,
          onPageChanged: (index) => pageIndexNotifier.value = index,
          //  physics:new NeverScrollableScrollPhysics(),
          itemBuilder: (context, pos) {
            return Scaffold(
              body: OnBoardingWidget(controller: controller, pos: pos),
            );
          },
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labeeb_front/presentation/common_widget/common_two_text_row_container.dart';

import '../../../../bloc/app_bloc/app_cubit.dart';
import '../../../common_widget/buid_app_bar.dart';
import '../../../resources/assets_manger.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class TreasuryAndBondsScreens extends StatelessWidget {
  const TreasuryAndBondsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(AppSize.size(context).height * .06),
          child: const CommonAppBar(title: 'الخزينة',)) ,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Center(child: Column(
              children: [
                CommonContainerTwoTextRow(firstTxt: 'الرصيد الحالى', secondTxt: "151230 دائن",secondTextColor: Colors.red),
                Row(
                  children: [

                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
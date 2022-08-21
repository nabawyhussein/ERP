import 'package:flutter/material.dart';

import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class TreasuryAndBondsScreens extends StatelessWidget {
  const TreasuryAndBondsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الخزينه",style: getBoldStyle(
            fontSize: AppSize.size(context).width * .0465,
            color: ColorManger.white)) ,
      ),
    );
  }
}

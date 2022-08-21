import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/translations/locale_keys.g.dart';

import '../resources/color_manger.dart';
import '../resources/font_manger.dart';
import '../resources/style_manger.dart';

class CreditorAndDebtorRowWidget extends StatelessWidget {
  const CreditorAndDebtorRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSize.size(context).height*0.025,
          horizontal: AppSize.size(context).width*0.09
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(LocaleKeys.Debtor.tr(),
                  style: getBoldStyle(
                      fontSize: AppSize.size(context).width * .042,
                      color: ColorManger.grey)),
              Text("5200",
                  style: getBoldStyle(
                      fontSize: AppSize.size(context).width * .042,
                      color: ColorManger.green)),
            ],
          ),
          Column(
            children: [
              Text(LocaleKeys.Creditor.tr(),
                  style: getBoldStyle(
                      fontSize: AppSize.size(context).width * .042,
                      color: ColorManger.grey)),
              Text("1523000",
                  style: getBoldStyle(
                      fontSize: AppSize.size(context).width * .042,
                      color: Colors.red)),
            ],
          ),
        ],
      ),
    );
  }
}

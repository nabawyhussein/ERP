import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/common_two_text_row_container.dart';
import 'package:labeeb_front/presentation/common_widget/creditor_and_debtor_row_widget.dart';
import 'package:labeeb_front/presentation/common_widget/print_show_search_row_widget.dart';
import 'package:labeeb_front/translations/locale_keys.g.dart';

import '../../../common_widget/common_list_tile_row_data_widget.dart';
import '../../../resources/font_manger.dart';

class CustomersWidget extends StatelessWidget {
  const CustomersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                vertical: AppSize.size(context).height * 0.02,
                horizontal: AppSize.size(context).width * 0.085),
            child: Column(
              children: [
                const CreditorAndDebtorRowWidget(),
                CommonContainerTwoTextRow(
                  firstTxt: LocaleKeys.addMovement.tr(),
                  secondTxt: LocaleKeys.movementsReport.tr(),
                ),
                SizedBox(
                  height: AppSize.size(context).height * 0.02,
                ),
                const PrintSearchRowIconsWidget(showPrinter: false),
              ],
            )),
        CommonListTileDataWidget(
          titleTxt: "ATMA",
          subTitleTxt: LocaleKeys.lastMove.tr() + " 12/12/2022 ",
          statusTxt: ' 3200 ' + LocaleKeys.Creditor.tr(),
          circleTxt: 'A',
        ),
      ],
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/build_button_widget.dart';
import 'package:labeeb_front/presentation/common_widget/common_two_text_row_container.dart';
import 'package:labeeb_front/presentation/common_widget/creditor_and_debtor_row_widget.dart';
import 'package:labeeb_front/presentation/common_widget/print_show_search_row_widget.dart';
import 'package:labeeb_front/translations/locale_keys.g.dart';
import '../../../common_widget/buid_app_bar.dart';
import '../../../common_widget/common_list_tile_row_data_widget.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';
class CatchReceiptWidget extends StatelessWidget {
  const CatchReceiptWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSize.size(context).height * 0.02,
        ),
        CommonContainerTwoTextRow(
          firstTxt: LocaleKeys.addDocument.tr(),
          secondTxt:LocaleKeys.movementsReport.tr() ,
        ),
        SizedBox(
          height: AppSize.size(context).height * 0.02,
        ),
        const PrintSearchRowIconsWidget(),
        CommonListTileDataWidget(titleTxt: LocaleKeys.documentNum.tr(),
          subTitleTxt: LocaleKeys.lastMove.tr() +" 12/12/2022 ",
          statusTxt: ' 3200 '+ LocaleKeys.Creditor.tr(), circleTxt: '110',),

        BuildButtonWidget(txt: LocaleKeys.addDocument.tr(),darkGrey: false,onPressed: (){},),
      ],
    );
  }
}

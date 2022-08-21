import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/build_button_widget.dart';
import 'package:labeeb_front/presentation/common_widget/common_two_text_row_container.dart';
import 'package:labeeb_front/presentation/common_widget/creditor_and_debtor_row_widget.dart';
import 'package:labeeb_front/presentation/common_widget/print_show_search_row_widget.dart';
import '../../../common_widget/buid_app_bar.dart';
import '../../../common_widget/common_list_tile_row_data_widget.dart';
import '../../../resources/font_manger.dart';

class TreasuryAndBondsScreens extends StatelessWidget {
  const TreasuryAndBondsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppSize.size(context).height * .06),
          child: const CommonAppBar(
            title: 'الخزينة',
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppSize.size(context).height * 0.02,
                    horizontal: AppSize.size(context).width * 0.085),
                child: Column(
                  children: [
                    const CommonContainerTwoTextRow(
                        firstTxt: 'الرصيد الحالى',
                        secondTxt: "151230 دائن",
                        secondTextColor: Colors.red),
                    const CreditorAndDebtorRowWidget(),
                    const CommonContainerTwoTextRow(
                      firstTxt: 'إضافة سند',
                      secondTxt: "تقرير التحركات",
                    ),
                    SizedBox(
                      height: AppSize.size(context).height * 0.02,
                    ),
                    const PrintSearchRowIconsWidget(),
                  ],
                )),
            CommonListTileDataWidget(),
            CommonListTileDataWidget(),
            CommonListTileDataWidget(),
            CommonListTileDataWidget(),
            BuildButtonWidget(txt: "اضافه سند",darkGrey: false,onPressed: (){},),
          ],
        ),
      ),
    );
  }
}

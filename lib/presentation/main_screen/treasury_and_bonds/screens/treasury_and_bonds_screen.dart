import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/common_two_text_row_container.dart';
import 'package:labeeb_front/presentation/common_widget/creditor_and_debtor_row_widget.dart';
import 'package:labeeb_front/presentation/main_screen/treasury_and_bonds/widgets/catchReceipt_widget.dart';
import 'package:labeeb_front/translations/locale_keys.g.dart';

import '../../../common_widget/buid_app_bar.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class TreasuryAndBondsScreens extends StatefulWidget {
  const TreasuryAndBondsScreens({Key? key}) : super(key: key);

  @override
  State<TreasuryAndBondsScreens> createState() =>
      _TreasuryAndBondsScreensState();
}

class _TreasuryAndBondsScreensState extends State<TreasuryAndBondsScreens>
    with SingleTickerProviderStateMixin {
  TabController? treasuryTabController;

  void initState() {
    // TODO: implement initState
    super.initState();
    treasuryTabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    treasuryTabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppSize.size(context).height * .06),
          child: CommonAppBar(
            title: LocaleKeys.treasury.tr(),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: AppSize.size(context).height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSize.size(context).width * 0.085),
                  child: Column(
                    children: [
                      CommonContainerTwoTextRow(
                          firstTxt: LocaleKeys.currentBalance.tr(),
                          secondTxt: LocaleKeys.Creditor.tr() + " 151230",
                          secondTextColor: Colors.red),
                      const CreditorAndDebtorRowWidget(),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Positioned.fill(
                        child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: ColorManger.dividerColor,
                            width: 3.0,
                          ),
                        ),
                      ),
                    )),
                    TabBar(
                      controller: treasuryTabController,
                      indicatorColor: ColorManger.primary,
                      indicatorPadding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      labelColor: ColorManger.primary,
                      unselectedLabelStyle: getBoldStyle(
                          fontSize: AppSize.size(context).width * .05,
                          color: ColorManger.black),
                      labelStyle: getBoldStyle(
                          fontSize: AppSize.size(context).width * .055,
                          color: ColorManger.black),
                      unselectedLabelColor: ColorManger.dividerColor,
                      tabs: [
                        Tab(
                          text: LocaleKeys.catchReceipt.tr(),
                        ),

                        // second tab [you can add an icon using the icon property]
                        Tab(
                          text: LocaleKeys.receipt.tr(),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: treasuryTabController,
                    children: [
                      // first tab bar view widget
                      const CatchReceiptWidget(),
                      Center(
                          child: Text(
                        LocaleKeys.sorryThereAreNoPreviousRequests.tr(),
                        style: getSemiBoldStyle(
                            color: ColorManger.grey,
                            fontSize: AppSize.size(context).width * .045),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

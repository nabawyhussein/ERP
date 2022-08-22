import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/build_button_widget.dart';
import 'package:labeeb_front/presentation/common_widget/common_two_text_row_container.dart';
import 'package:labeeb_front/presentation/common_widget/date_from_to_column_widget.dart';
import 'package:labeeb_front/presentation/main_screen/invoices/widgets/purchase_Invoices_widget.dart';
import 'package:labeeb_front/translations/locale_keys.g.dart';
import '../../../common_widget/buid_app_bar.dart';
import '../../../common_widget/common_list_tile_row_data_widget.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class InvoicesScreen extends StatefulWidget {
  const InvoicesScreen({Key? key}) : super(key: key);

  @override
  State<InvoicesScreen> createState() => _InvoicesScreenState();
}

class _InvoicesScreenState extends State<InvoicesScreen> with SingleTickerProviderStateMixin{
  TabController? invoicesTabController;
  void initState() {
    // TODO: implement initState
    super.initState();
    invoicesTabController = TabController(vsync: this, length: 4);
  }
  @override
  void dispose() {
    invoicesTabController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppSize.size(context).height * .06),
          child:  CommonAppBar(
            title: LocaleKeys.Invoices.tr(),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned.fill(
                        child: Container(decoration: const BoxDecoration(
                          border:  Border(
                            bottom: BorderSide(
                              color: ColorManger.dividerColor,
                              width: 2.0,
                            ),
                          ),
                        ),)),
                    TabBar(
                      controller: invoicesTabController,
                      indicatorColor: ColorManger.primary,
                      indicatorPadding: EdgeInsets.zero,

                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 2,
                      labelColor: ColorManger.primary,
                      unselectedLabelStyle: getBoldStyle(
                          fontSize: AppSize.size(context).width * .032,
                          color: ColorManger.black),
                      labelStyle: getBoldStyle(
                          fontSize: AppSize.size(context).width * .035,
                          color: ColorManger.black),
                      unselectedLabelColor: ColorManger.dividerColor,
                      tabs: [
                        Tab(
                          text: LocaleKeys.PurchaseInvoices.tr(),
                        ),

                        // second tab [you can add an icon using the icon property]
                        Tab(
                          text: LocaleKeys.saleReturn.tr(),
                        ),
                        Tab(
                          text: LocaleKeys.PurchaseInvoices.tr(),
                        ),
                        Tab(
                          text: LocaleKeys.PurchaseInvoices.tr(),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: invoicesTabController,
                    children: [
                      // first tab bar view widget
                      const PurchaseInvoicesWidget(),
                      Center(
                          child: Text(
                            LocaleKeys.sorryThereAreNoPreviousRequests.tr(),
                            style: getSemiBoldStyle(
                                color: ColorManger.grey,
                                fontSize: AppSize.size(context).width * .045),
                          )),
                      Center(
                          child: Text(
                            LocaleKeys.sorryThereAreNoPreviousRequests.tr(),
                            style: getSemiBoldStyle(
                                color: ColorManger.grey,
                                fontSize: AppSize.size(context).width * .045),
                          )),
                      Center(
                          child: Text(
                            LocaleKeys.sorryThereAreNoPreviousRequests.tr(),
                            style: getSemiBoldStyle(
                                color: ColorManger.grey,
                                fontSize: AppSize.size(context).width * .045),
                          )),
                    ],
                  ),
                ),

              ],
            ),
          ),



          BuildButtonWidget(txt: LocaleKeys.addInvoice.tr(),darkGrey: false,onPressed: (){},),
          SizedBox(
            height: AppSize.size(context).height * 0.02,
          ),
        ],
      ),
    );
  }
}

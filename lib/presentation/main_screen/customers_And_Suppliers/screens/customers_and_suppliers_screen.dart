import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/build_button_widget.dart';
import 'package:labeeb_front/presentation/main_screen/customers_And_Suppliers/widgets/customers_widget.dart';
import 'package:labeeb_front/translations/locale_keys.g.dart';

import '../../../common_widget/buid_app_bar.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class CustomersAndSuppliersScreen extends StatefulWidget {
  const CustomersAndSuppliersScreen({Key? key}) : super(key: key);

  @override
  State<CustomersAndSuppliersScreen> createState() =>
      _CustomersAndSuppliersScreenState();
}

class _CustomersAndSuppliersScreenState
    extends State<CustomersAndSuppliersScreen>
    with SingleTickerProviderStateMixin {
  TabController? customersAndSuppliersTabController;

  void initState() {
    // TODO: implement initState
    super.initState();
    customersAndSuppliersTabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    customersAndSuppliersTabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppSize.size(context).height * .06),
          child: CommonAppBar(
            title: LocaleKeys.customersAndSuppliers.tr(),
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
                      controller: customersAndSuppliersTabController,
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
                          text: LocaleKeys.customers.tr(),
                        ),
                        Tab(
                          text: LocaleKeys.Suppliers.tr(),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: customersAndSuppliersTabController,
                    children: [
                      CustomersWidget(),
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
          BuildButtonWidget(
            txt: LocaleKeys.addClient.tr(),
            darkGrey: false,
            onPressed: () {},
          ),
          SizedBox(
            height: AppSize.size(context).height * 0.02,
          ),
        ],
      ),
    );
  }
}

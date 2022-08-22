import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/print_show_search_row_widget.dart';

import '../../translations/locale_keys.g.dart';
import '../resources/color_manger.dart';
import '../resources/font_manger.dart';
import '../resources/style_manger.dart';
import 'common_date_picker.dart';

class DateFromToColumnWidget extends StatelessWidget {
  DateFromToColumnWidget({Key? key}) : super(key: key);
  DateTime? reportFrom;
  DateTime? reportTo;
  TextEditingController reportDateFormController = TextEditingController();
  TextEditingController reportDateToController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dateRowBuilder(
            context: context,
            title: LocaleKeys.dateFrom.tr(),
            dateController: reportDateFormController,
            date: reportFrom),
        SizedBox(
          height: AppSize.size(context).height * 0.015,
        ),
        dateRowBuilder(
            context: context,
            title: LocaleKeys.dateTo.tr(),
            dateController: reportDateToController,
            date: reportTo),
        SizedBox(
          height: AppSize.size(context).height * 0.015,
        ),
        const PrintSearchRowIconsWidget(),
      ],
    );
  }

  Container dateRowBuilder(
      {BuildContext? context,
      String? title,
      TextEditingController? dateController,
      DateTime? date}) {
    return Container(
      width: AppSize.size(context!).width * .85,
      decoration: BoxDecoration(
        border: Border.all(color: ColorManger.primary),
        borderRadius: BorderRadius.circular(AppSize.size(context).width * .073),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: getBoldStyle(
                      fontSize: AppSize.size(context).width * .037,
                      color: ColorManger.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.date_range_outlined)
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  vertical: AppSize.size(context).width * .01),
              child: Container(
                width: 1,
                color: ColorManger.primary,
                height: AppSize.size(context).height * .05,
              )),
          Expanded(
            child: CustomDatePicker(
              controller: dateController,
              startDate: DateTime(2022),
              endDate: DateTime.now(),
              onChange: (f) {
                date = DateTime.parse(f);
                if (kDebugMode) {
                  print(date);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

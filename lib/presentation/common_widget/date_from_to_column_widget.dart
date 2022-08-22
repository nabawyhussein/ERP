import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/common_widget/print_show_search_row_widget.dart';

import '../../translations/locale_keys.g.dart';
import '../resources/color_manger.dart';
import '../resources/font_manger.dart';
import '../resources/style_manger.dart';

class DateFromToColumnWidget extends StatelessWidget {
  const DateFromToColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dateRowBuilder(context: context,title: LocaleKeys.dateFrom.tr()),
        SizedBox(height: AppSize.size(context).height*0.015,),
        dateRowBuilder(context: context,title: LocaleKeys.dateTo.tr()),
        SizedBox(height: AppSize.size(context).height*0.015,),
        const PrintSearchRowIconsWidget(),
      ],
    );
  }

  Container dateRowBuilder({BuildContext? context ,String ?title}) {
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
                  Text(title!,style: getBoldStyle(
                      fontSize: AppSize.size(context).width * .037,
                      color: ColorManger.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 5,),
                  const Icon(Icons.date_range_outlined)
                ],
              ),
            ),
            Padding(
                padding:  EdgeInsets.symmetric( vertical: AppSize.size(context).width * .01),
                child: Container(width: 1,color: ColorManger.primary,height: AppSize.size(context).height * .05,)),

            Expanded(
              child: Text("",style: getBoldStyle(
                  fontSize: AppSize.size(context).width * .037,
                  color:ColorManger.black),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
  }
}

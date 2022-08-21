import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../resources/color_manger.dart';
import '../../../resources/constant_manger.dart';
import '../../../resources/font_manger.dart';
import '../../../resources/style_manger.dart';

class HomeMainCategoriesBuilderWidget extends StatelessWidget {
  const HomeMainCategoriesBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: AppSize.size(context).height * .015),
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: AppSize.size(context).width * 0.45,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            childAspectRatio: 1.08/ 1),
        //padding: const EdgeInsets.all(20.0),
        itemCount: AppConstant.homeList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () async {
            // Navigator.pushNamed(context, AppConstant.homeList[index].nextScreen!);
            await context.setLocale(AppConstant.arabic);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: AppSize.size(context).width * 0.02,horizontal: AppSize.size(context).width * 0.05),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: ColorManger.black,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(color: ColorManger.primary,thickness: 5,),
                // Spacer(),
                Text(
                  AppConstant.locale == english
                      ?
                  AppConstant.homeList[index].txtEn!
                      :
                  AppConstant.homeList[index].txtAr!,
                  textAlign: TextAlign.center,
                  style: getRegularStyle(
                      fontSize: AppSize.size(context).width * .052,
                      color: ColorManger.white),
                ),
                Text("")
                // Spacer(),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../bloc/app_bloc/app_cubit.dart';
import '../resources/color_manger.dart';
import '../resources/font_manger.dart';
import '../resources/style_manger.dart';

class CommonContainerTwoTextRow extends StatelessWidget {
  const CommonContainerTwoTextRow({Key? key,required this.firstTxt,required this.secondTxt,this.secondTextColor=ColorManger.black}) : super(key: key);
  final String firstTxt;
  final String secondTxt;
  final Color ?secondTextColor;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: AppSize.size(context).width * .8,
      padding: EdgeInsets.symmetric(horizontal: AppSize.size(context).width * .06,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManger.primary),
        borderRadius: BorderRadius.circular(AppSize.size(context).width * .073),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(firstTxt,style: getBoldStyle(
              fontSize: AppSize.size(context).width * .042,
              color: ColorManger.black)),
          Padding(
              padding:  EdgeInsets.symmetric( vertical: AppSize.size(context).width * .01),
              child: Container(width: 1,color: ColorManger.primary,height: AppSize.size(context).height * .05,)),

          Text(secondTxt,style: getBoldStyle(
              fontSize: AppSize.size(context).width * .042,
              color:secondTextColor)),
        ],
      ),
    );
  }
}

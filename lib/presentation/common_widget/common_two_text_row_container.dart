import 'package:flutter/material.dart';
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
      width: AppSize.size(context).width * .85,
      decoration: BoxDecoration(
        border: Border.all(color: ColorManger.primary),
        borderRadius: BorderRadius.circular(AppSize.size(context).width * .073),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(firstTxt,style: getBoldStyle(
                fontSize: AppSize.size(context).width * .035,
                color: ColorManger.black),
            textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding:  EdgeInsets.symmetric( vertical: AppSize.size(context).width * .01),
              child: Container(width: 1,color: ColorManger.primary,height: AppSize.size(context).height * .05,)),

          Expanded(
            child: Text(secondTxt,style: getBoldStyle(
                fontSize: AppSize.size(context).width * .035,
                color:secondTextColor),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

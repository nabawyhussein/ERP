 import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/resources/constant_manger.dart';

import '../../translations/locale_keys.g.dart';
import '../resources/color_manger.dart';
import '../resources/font_manger.dart';
import '../resources/style_manger.dart';

class CommonListTileDataWidget extends StatelessWidget {
   CommonListTileDataWidget({Key? key,required this.circleTxt,required this.statusTxt,required this.subTitleTxt,required this.titleTxt}) : super(key: key);
   String circleTxt;
   String titleTxt;
   String subTitleTxt;
   String statusTxt;

   @override
   Widget build(BuildContext context) {
     return  Container(
       width: AppSize.size(context).width,
       padding:  EdgeInsets.symmetric(horizontal: AppSize.size(context).width*0.04,
       vertical:  AppSize.size(context).height *0.005
       ),
       child: Column(
         children: [
           Row(
             children: [
               CircleAvatar(
                 radius: 25,
                 backgroundColor: ColorManger.primary,
                 child: Text(circleTxt,
                     style: getBoldStyle(
                         fontSize: AppSize.size(context).width * .055,
                         color: ColorManger.white)),
               ),
               SizedBox(width: AppSize.size(context).width*0.03,),
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(titleTxt,
                         style: getBoldStyle(
                             fontSize: english == const Locale("en") ?  AppSize.size(context).width * .045: AppSize.size(context).width * .042,
                             color: ColorManger.black)),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(subTitleTxt,
                             style: getBoldStyle(
                                 fontSize: english == const Locale("en") ? AppSize.size(context).width * .035 : AppSize.size(context).width * .042,
                                 color: ColorManger.grey)),
                         Text(statusTxt,
                             style: getBoldStyle(
                                 fontSize: english == const Locale("en") ? AppSize.size(context).width * .035 : AppSize.size(context).width * .042,
                                 color: ColorManger.green)),
                       ],
                     )
                   ],
                 ),
               ),
               const Icon(Icons.arrow_forward_ios)
             ],
           ),
           const Divider(color: ColorManger.dividerColor,thickness: 2,)
         ],
       ),
     );
   }
 }

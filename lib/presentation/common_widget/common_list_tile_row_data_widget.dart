 import 'package:flutter/material.dart';

import '../resources/color_manger.dart';
import '../resources/font_manger.dart';
import '../resources/style_manger.dart';

class CommonListTileDataWidget extends StatelessWidget {
   const CommonListTileDataWidget({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  Padding(
       padding:  EdgeInsets.symmetric(horizontal: AppSize.size(context).width*0.04),
       child: Column(
         children: [
           Row(
             children: [
               Expanded(
                 child: ListTile(
                   contentPadding: EdgeInsets.zero,
                   leading: CircleAvatar(
                     radius: 25,
                     backgroundColor: ColorManger.primary,
                     child: Text(" A",
                         style: getBoldStyle(
                             fontSize: AppSize.size(context).width * .065,
                             color: ColorManger.white)),
                   ),
                   subtitle: Text("أخر حركة 12/12/2022",
                       style: getBoldStyle(
                           fontSize: AppSize.size(context).width * .042,
                           color: ColorManger.grey)),
                   title: Text("سند رقم 011",
                       style: getBoldStyle(
                           fontSize: AppSize.size(context).width * .042,
                           color: ColorManger.black)),
                   trailing: Column(
                     children: [
                       Spacer(),
                       Text("3200 مدين ",
                           style: getBoldStyle(
                               fontSize: AppSize.size(context).width * .042,
                               color: ColorManger.green)),
                     ],
                   ),

                 ),
               ),
               const Icon(Icons.arrow_forward_ios)
             ],
             //const Icon(Icons.arrow_back_ios)
           ),
           Divider(color: ColorManger.dividerColor,thickness: 2,)
         ],
       ),
     );
   }
 }

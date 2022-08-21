import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/resources/font_manger.dart';

import '../resources/color_manger.dart';

class PrintSearchRowIconsWidget extends StatelessWidget {
  const PrintSearchRowIconsWidget({Key? key,this.showPrinter=true}) : super(key: key);
  final bool ?showPrinter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.size(context).width,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showPrinter! ?  iconBuilder(icon: Icons.print, onTap: () {  }, context: context):Container(),
          iconBuilder(icon: Icons.remove_red_eye_rounded, onTap: () {  }, context: context),
          iconBuilder(icon: Icons.search, onTap: () {  }, context: context),
        ],
      ),
    );
  }

  Padding iconBuilder({required VoidCallback ?onTap,required IconData ?icon, required BuildContext context}) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSize.size(context).width * 0.015),
      child: CircleAvatar(child: IconButton(onPressed: onTap!,
            icon: Icon(icon!,color: Colors.black,),

          ), backgroundColor: ColorManger.iconsBackGround),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labeeb_front/presentation/resources/assets_manger.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';

import '../resources/font_manger.dart';
import '../resources/style_manger.dart';

class BuildButtonWidget extends StatelessWidget {
  const BuildButtonWidget(
      {Key? key,
      this.txt,
      this.darkGrey = false,
      this.onPressed,
      this.rowIcon = false})
      : super(key: key);
  final String? txt;
  final bool? darkGrey;
  final bool? rowIcon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: darkGrey == true ? ColorManger.black : null,
        minimumSize: Size(AppSize.size(context).width * .65,
            AppSize.size(context).height * .056),
        //padding: EdgeInsets.symmetric(horizontal: AppSize.size(context).width * .25,vertical: 10),
      ),
      onPressed: onPressed,
      child: rowIcon == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundColor: ColorManger.white,
                  radius: 15,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                Text(txt!,
                    style: getRegularRobotoStyle(
                        color: ColorManger.white,
                        fontSize: AppSize.size(context).width * .045)),
                SvgPicture.asset(AppIcons.appLocationIcon,
                    width: AppSize.size(context).width * .045),
              ],
            )
          : Text(txt!,
              style: getRegularRobotoStyle(
                  color: ColorManger.white,
                  fontSize: AppSize.size(context).width * .045)),
    );
  }
}

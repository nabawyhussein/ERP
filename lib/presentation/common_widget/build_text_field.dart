import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';
import 'package:labeeb_front/presentation/resources/font_manger.dart';

class BuildTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;
  final GestureTapCallback? onTap;
  final bool? isSeen;
  final String? svg;
  final String? labelText;
  final bool? password;
  final bool? showBorders;
  final int? maxLines;
  final Color ?fillColor;
  final TextAlign ?textAlign;
  const BuildTextField(
      {Key? key,
        this.showBorders=true,
        this.fillColor,
      this.controller,
      this.validator,
      this.textInputType,
      this.onTap,
        this.textAlign =TextAlign.start,
      this.isSeen = false,
      this.svg,
      this.labelText,
      this.password = false,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: password! ? isSeen! : false,
        maxLines: maxLines,
        textAlign: textAlign!,
        textAlignVertical: showBorders!?TextAlignVertical.center:TextAlignVertical.top,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: showBorders!?null:InputBorder.none,
          disabledBorder:showBorders!?null:InputBorder.none,
          focusedBorder:showBorders!?null:InputBorder.none,
          filled: true,
          fillColor: fillColor??ColorManger.white,
          contentPadding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          hintText: "$labelText",
           prefixIcon: svg != null
              ? Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSize.size(context).width * .04),
                  child: SvgPicture.asset(
                    svg!,
                    color: ColorManger.primary,
                    width:AppSize.size(context).width * .052 ,
                  ))
              : null,
          suffixIcon: password!
              ? InkWell(
                  onTap: onTap,
                  child: Image.asset("assets/images/eye_slash.png"))
              : null,
        ),
        validator: validator);
  }
}

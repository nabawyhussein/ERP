import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';


class DrawerItem extends StatelessWidget {
 final String title;
 final IconData iconData;
 final IconData mainIconData;
 final Function() onTap;
   DrawerItem({Key? key,required this.title,required this.iconData,required this.onTap,required this.mainIconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        // margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(mainIconData,color: ColorManger.grey,size: 18.0),
            const SizedBox(width: 10.0,),
            Text(title,style: const TextStyle(color: ColorManger.black)),
            const Spacer(),
            Icon(iconData,color: ColorManger.grey,size: 18.0),
          ],
        ),
      ),
    );
  }
}

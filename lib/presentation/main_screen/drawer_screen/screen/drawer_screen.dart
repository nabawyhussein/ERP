import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labeeb_front/presentation/resources/assets_manger.dart';
import 'package:labeeb_front/presentation/resources/color_manger.dart';
import 'package:labeeb_front/presentation/resources/font_manger.dart';
import 'package:labeeb_front/presentation/resources/style_manger.dart';

import '../../../../bloc/app_bloc/app_cubit.dart';
import '../../../../translations/locale_keys.g.dart';
import '../widgets/drawer_item.dart';
class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        AppCubit customDrawerCubit = BlocProvider.of<AppCubit>(context);
        if(customDrawerCubit.zoomDrawerController.isOpen!.call()){
          customDrawerCubit.toggleDrawer();
          return Future.value(false);
        }
        else{
          return Future.value(true);
        }

        },
      child: Scaffold(
        backgroundColor: ColorManger.green,
        body: Container(
          width: MediaQuery.of(context).size.width * 0.60,
          height: double.infinity,
          // color: Colors.red,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
           ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                   padding: EdgeInsets.symmetric(horizontal: AppSize.size(context).width * .1,vertical:  AppSize.size(context).height * .05),
                    decoration: const BoxDecoration(
                        color: ColorManger.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(AppImages.appLogo),fit: BoxFit.contain)),
                  ),
                ],
              ),
               ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text( "Nabawy", style: getRobotoSemiBoldStyle(color: ColorManger.black,fontSize: AppSize.size(context).width * .044)),
                subtitle: Text( "ATMA@TECH.COM",
                    style:getRegularRobotoStyle(color: ColorManger.grey)),
              ),
              DrawerItem(
                  title: LocaleKeys.home.tr(),
                  mainIconData: Icons.home,
                  iconData: Icons.arrow_forward_ios,
                  onTap: () async{

                  }),
              Divider(color: ColorManger.dividerColor.withOpacity(0.5)),
              DrawerItem(
                  title: LocaleKeys.language.tr(),
                  mainIconData: Icons.language,
                  iconData: Icons.arrow_forward_ios,
                  onTap: () {}
              ),
              Divider(color: ColorManger.dividerColor.withOpacity(0.5)),

              DrawerItem(
                  title: LocaleKeys.contactUs.tr(),
                  mainIconData: Icons.support_agent_outlined,
                  iconData: Icons.arrow_forward_ios,
                  onTap: () {

                  }
              ),
              Divider(color: ColorManger.dividerColor.withOpacity(0.5)),
              DrawerItem(
                  title: LocaleKeys.support.tr(),
                  mainIconData: Icons.contact_support,
                  iconData: Icons.arrow_forward_ios,
                  onTap: () {}),
              Divider(color: ColorManger.dividerColor.withOpacity(0.5)),
              DrawerItem(
                  title: LocaleKeys.logout.tr(),
                  mainIconData: Icons.logout,
                  iconData: Icons.arrow_forward_ios,
                  onTap: ()async {

                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

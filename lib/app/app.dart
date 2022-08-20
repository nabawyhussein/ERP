import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labeeb_front/bloc/app_bloc/app_cubit.dart';

import '../bloc/location_bloc/location_cubit.dart';
import '../presentation/resources/routes_manger.dart';
import '../presentation/resources/theme_manger.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LocationCubit>(create: (context) => LocationCubit()),
          BlocProvider<AppCubit>(create: (context) => AppCubit()),
        ],
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          useInheritedMediaQuery: true,
          theme: appTheme(),
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.splashScreen,
          debugShowCheckedModeBanner: false,
        ));
  }
}

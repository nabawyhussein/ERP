import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labeeb_front/presentation/resources/routes_manger.dart';

import '../../../bloc/location_bloc/location_cubit.dart';
import '../../common_widget/build_logo_widget.dart';
import '../../resources/constant_manger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late AnimationController _animationController;
  late Animation<double> _animation;

  _startDelay() async {
    // LocationCubit locationCubit = BlocProvider.of(context);
    // await locationCubit.getGeoLocation();
    // locationCubit.addMarker(context);
    // locationCubit.setMarkerAddRecipient();
    _timer =
        Timer(const Duration(seconds: AppConstant.splashDelay), _goNextScreen);
  }

  _goNextScreen() {
    // addMarker(locationCubit);
    Navigator.pushReplacementNamed(context, Routes.startScreen);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: AppConstant.splashAnimationDelay),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        _startDelay();
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer!.cancel();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _filterSplashImage(),
    );
  }

  _filterSplashImage() {
    return Container(
      alignment: Alignment.center,
      child: AnimatedBuilder(
        animation: _animation,
        child: const BuildLogoWidget(),
        builder: (_, child) {
          return Opacity(
            opacity: _animation.value,
            child: Transform.translate(
              offset: Offset(0, (1 - _animation.value) * -150),
              child: child,
            ),
          );
        },
      ),
    );
  }
}

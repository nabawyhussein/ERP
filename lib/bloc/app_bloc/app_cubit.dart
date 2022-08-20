import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  bool receiveMoneyFromHim = true;
   int initialLabelIndex = 0;
  ZoomDrawerController zoomDrawerController = ZoomDrawerController();

  receiveMoneyFromHimFunction(bool receiveMoneyFromHim,int initialLabelIndex){
    this.receiveMoneyFromHim = receiveMoneyFromHim;
    this.initialLabelIndex = initialLabelIndex;
    emit(ReceiveMoneyFromHimSuccess());
  }

  toggleDrawer() async{

    if (kDebugMode) {
      print("zoomDrawerController.isOpen!.call()${zoomDrawerController.isOpen!.call()}");
    }
    zoomDrawerController.toggle?.call();
    emit(ToggleDrawerState());
  }


}

part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class ReceiveMoneyFromHimSuccess extends AppState {}

class ToggleDrawerState extends AppState {}

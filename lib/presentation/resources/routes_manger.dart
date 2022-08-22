import 'package:flutter/material.dart';
import 'package:labeeb_front/presentation/main_screen/auth/screens/register_screen.dart';
import 'package:labeeb_front/presentation/main_screen/prices_offers/screens/prices_offers_screen.dart';
import 'package:labeeb_front/presentation/resources/route_animatin.dart';
import '../main_screen/auth/screens/login_screen.dart';
import '../main_screen/customers_And_Suppliers/screens/customers_and_suppliers_screen.dart';
import '../main_screen/daily_restrictions/screens/daily_restrictions_screen.dart';
import '../main_screen/invoices/screens/invoices_screens.dart';
import '../main_screen/on_boarding/screens/on_boarding_screen.dart';
import '../main_screen/select_main_category/screens/select_main_category_screen.dart';
import '../main_screen/splash/splash_screen.dart';
import '../main_screen/start/start_screen.dart';
import '../main_screen/treasury_and_bonds/screens/treasury_and_bonds_screen.dart';

class Routes {
  ///main route
  static const String splashScreen = "/";

  ///start screen
  static const String startScreen = "/start";

  ///onBoarding Screen
  static const String onBoardingScreen = "/onBoardingScreen";

  ///login screen
  static const String loginScreen = "/login";

  ///register screen
  static const String registerScreen = "/registerScreen";
  /// SelectMainCategoryScreen
  static const String selectMainCategoryScreen = "/SelectMainCategoryScreen";
  /// TreasuryAndBondsScreens
  static const String treasuryAndBondsScreens = "/TreasuryAndBondsScreens";
  /// TreasuryAndBondsScreens
  static const String customersAndSuppliersScreen = "/CustomersAndSuppliersScreen";
  /// InvoicesScreen
  static const String invoicesScreen = "/InvoicesScreen";
  /// DailyRestrictionsScreen
  static const String dailyRestrictionsScreen = "/DailyRestrictionsScreen";
  /// DailyRestrictionsScreen
  static const String pricesOffersScreen = "/PricesOffersScreen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return createRouteForStateFul(const SplashScreen());
      case Routes.startScreen:
        return createRoute(const StartScreen());
      case Routes.loginScreen:
        return createRoute(LoginScreen());
      case Routes.registerScreen:
        return createRoute(RegisterScreen());
      case Routes.onBoardingScreen:
        return createRoute(OnBoardingScreen());
        case Routes.selectMainCategoryScreen:
        return createRoute(const SelectMainCategoryScreen());
        case Routes.invoicesScreen:
        return createRoute(const InvoicesScreen());
        case Routes.dailyRestrictionsScreen:
        return createRoute(const DailyRestrictionsScreen());
        case Routes.pricesOffersScreen:
        return createRoute(const PricesOffersScreen());
        case Routes.treasuryAndBondsScreens:
        return createRouteForStateFul(const TreasuryAndBondsScreens());
      case Routes.customersAndSuppliersScreen:
        return createRouteForStateFul(const CustomersAndSuppliersScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(
                child: Text("No Route Found"),
              ),
            ));
  }
}

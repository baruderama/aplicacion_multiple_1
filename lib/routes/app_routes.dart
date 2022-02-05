import 'package:aplicacion_multiple_1/models/models.dart';
import 'package:aplicacion_multiple_1/screens/screens.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>{
    //TODO: borrar home
    MenuOptions(
        route: 'home',
        icon: Icons.home_filled,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'listview1',
        icon: Icons.list,
        name: 'List View 1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listview2',
        icon: Icons.list_alt_rounded,
        name: 'List View 2',
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alert_rounded,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.credit_card_rounded,
        name: 'Card',
        screen: const CardScreen()),
  };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: ((context) => const AlertScreen()),
    );
  }
}

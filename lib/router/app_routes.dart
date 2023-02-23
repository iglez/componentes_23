import 'package:componentes_23/models/menu_option.dart';
import 'package:componentes_23/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = [
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: HomeScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card Screen',
        screen: CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.warning,
        name: 'Alert Screen',
        screen: AlertScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_outlined,
        name: 'List view Screen',
        screen: ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_sharp,
        name: 'List view Screen 2',
        screen: ListView2Screen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervisor_account_outlined,
        name: 'Cricle Avatar',
        screen: AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.supervisor_account_outlined,
        name: 'Animated Container',
        screen: AnimatedScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      // appRoutes.addAll({'listview1': (context) => ListView1Screen()});
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }
}

import 'package:dhbworld_flutter/values/navigation_routes.dart';
import 'package:flutter/material.dart';
import 'package:dhbworld_flutter/values/colors.dart';

import '../../generated/l10n.dart';
import 'nav_route.dart';

class DHBWorldNavigator {
  
  int screenIndex = 0;
  final Function(int index) onItemTap;

  DHBWorldNavigator(this.onItemTap);

  Widget buildNavDrawer() {
    var navDrawer = NavigationDrawer(
      onDestinationSelected: _onItemTap,
      selectedIndex: screenIndex,
      indicatorColor: DColors.red_selection,
      indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(12)
          )
      ),
      children: <Widget>[
        buildHeader(),
        ...NavigationRoutes.routes.asMap().entries.map((e) {
          int index = e.key;
          NavigationRoute navRoute = e.value;

          return NavigationDrawerDestination(
              icon: Icon(navRoute.icon, color: _getIconColor(screenIndex, index)),
              label: Text(navRoute.title, style: _getDrawerTextColor(screenIndex, index))
          );
        }),
        buildDivider(),
      ],
    );

    return NavigationDrawerTheme(data: const NavigationDrawerThemeData(
        tileHeight: 42.0
    ), child: navDrawer);
  }

  Padding buildHeader() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(28, 44, 16, 24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(
                S.current.dhbworld,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                S.current.all_in_one_app,
                style: const TextStyle(fontSize: 14),
              )
            ]
        ),
      );
  }

  Padding buildDivider() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(28, 8, 28, 8),
      child: Divider(),
    );
  }

  void _onItemTap(int index) {
    screenIndex = index;
    onItemTap(index);
  }

  TextStyle? _getDrawerTextColor(int screenIndex, int actualIndex) {
    if (screenIndex == actualIndex) {
      return const TextStyle(color: DColors.red);
    }
    return null;
  }

  Color? _getIconColor(int screenIndex, int actualIndex) {
    if (screenIndex == actualIndex) {
      return DColors.red;
    }
    return null;
  }
  
}
import 'package:flutter/cupertino.dart';

class NavigationRoute {
  final String title;
  final IconData icon;
  final Widget Function() route;

  NavigationRoute(this.title, this.icon, this.route);

}
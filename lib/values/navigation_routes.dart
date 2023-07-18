import 'package:dhbworld_flutter/ui/Navigation/nav_route.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../ui/Pages/home.dart';
import '../ui/Pages/personal_information/personal_information.dart';
import '../ui/Pages/map/map.dart';

class NavigationRoutes {
  static List<NavigationRoute> routes = [
    NavigationRoute("Home", Icons.home_rounded, () {return const Home();}),
    NavigationRoute(S.current.personal_information, Icons.person_rounded, () {return PersonalInformation();}),
    NavigationRoute(S.current.map, Icons.map_rounded, () {return Map();})
  ];
}
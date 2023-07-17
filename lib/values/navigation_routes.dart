import 'package:dhbworld_flutter/ui/Navigation/nav_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/Pages/home.dart';
import '../ui/Pages/personal_information/personal_information.dart';
import '../ui/Pages/map/map.dart';

class NavigationRoutes {
  static List<NavigationRoute> routes = [
    NavigationRoute("Home", Icons.home, () {return const Home();}),
    NavigationRoute("personal_information".tr, Icons.add_call, () {return PersonalInformation();}),
    NavigationRoute("map".tr, Icons.map, () {return Map();})
  ];
}
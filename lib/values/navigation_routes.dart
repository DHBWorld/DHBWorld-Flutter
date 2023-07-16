import 'package:dhbworld_flutter/ui/Navigation/nav_route.dart';
import 'package:flutter/material.dart';

import '../ui/Pages/home.dart';
import '../ui/Pages/personal_information/personal_information.dart';

class NavigationRoutes {
  static List<NavigationRoute> routes = [
    NavigationRoute("Home", Icons.home, const Home()),
    NavigationRoute("Persönliche Infos", Icons.add_call, PersonalInformation()),
  ];
}
import 'package:dhbworld_flutter/ui/Navigation/nav_route.dart';
import 'package:flutter/material.dart';
import 'package:dhbworld_flutter/ui/Pages/home.dart';

class NavigationRoutes {
  static List<NavigationRoute> routes = [
    NavigationRoute("Home", Icons.home, const Home(title: "Hello",)),
    NavigationRoute("Edit", Icons.add_call, const Home(title: "World",)),
  ];
}
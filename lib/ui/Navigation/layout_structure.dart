import 'package:dhbworld_flutter/ui/Navigation/navigator.dart';
import 'package:dhbworld_flutter/values/navigation_routes.dart';
import 'package:flutter/material.dart';


class LayoutStructure extends StatefulWidget {
  const LayoutStructure({super.key});

  @override
  State<LayoutStructure> createState() => LayoutStructureState();
}

class LayoutStructureState extends State<LayoutStructure> {
  Widget screen = NavigationRoutes.routes.first.route;

  DHBWorldNavigator? navigator;

  @override
  Widget build(BuildContext context) {
    navigator ??= DHBWorldNavigator(onItemTap);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("DHBWorld", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("data")));
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      drawer: navigator!.buildNavDrawer(),
      body: screen,
    );
  }

  void onItemTap(int index) {
    setState(() {
      screen = NavigationRoutes.routes[index].route;
      Navigator.pop(context);
    });
  }
}
import 'package:dhbworld_flutter/ui/Navigation/layout_structure.dart';
import 'package:flutter/material.dart';
import 'values/mColors.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DHBWorld',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mColors.red, primary: mColors.red, primaryContainer: mColors.red, onPrimary: Colors.white, secondary: mColors.grey_dark, onSecondary: Colors.white),
        useMaterial3: true,
      ),
      home: const LayoutStructure(),
    );
  }
}

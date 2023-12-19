import 'package:dhbworld_flutter/ui/Navigation/layout_structure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'values/colors.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: DColors.red, primary: DColors.red, primaryContainer: DColors.red, onPrimary: Colors.white, secondary: DColors.grey_dark, onSecondary: Colors.white),
        useMaterial3: true,
       ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: DColors.red, brightness: Brightness.dark, primary: DColors.red, primaryContainer: DColors.red, onPrimary: Colors.white, secondary: DColors.grey_dark, onSecondary: Colors.white),
        useMaterial3: true,
      ),
      home: const LayoutStructure(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

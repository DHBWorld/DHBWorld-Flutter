import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;

  const Home({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
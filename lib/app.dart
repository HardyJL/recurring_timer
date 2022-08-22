import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recurring_timer/features/home/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

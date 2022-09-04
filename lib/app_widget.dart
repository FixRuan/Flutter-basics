import 'package:f/app_crontoller.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.green,
            brightness: AppController.instance.isDarkTheme == true
                ? Brightness.dark
                : Brightness.light,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}

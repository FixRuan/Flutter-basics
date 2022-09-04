// ignore_for_file: avoid_unnecessary_containers

import 'package:f/app_crontoller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int couter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
          child: Switch(
              value: AppController.instance.isDarkTheme,
              onChanged: (value) {
                AppController.instance.changeTheme();
              })),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              couter++;
            });
          }),
    );
  }
}

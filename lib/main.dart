import 'package:flutter/material.dart';
import 'package:redbusclone/screencontroller/screenController.dart';
import 'package:redbusclone/ui/home.dart';
import 'package:redbusclone/ui/selectBus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent)
      ),
      home: const ScreenController(),
    );
  }
}

import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) {
          return const homepage();
        },
        "home": (context) {
          return const home();
        }
      },
      title: 'Car dekho',
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:music_app_pr/screens/HomePage.dart';
import 'package:music_app_pr/screens/music_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        'music_screen': (context) => const Music(),
      },
    );
  }
}

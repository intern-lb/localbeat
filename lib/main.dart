import 'package:flutter/material.dart';
import 'home_page.dart';
// import 'map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Local Beat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(255, 75, 58, 1),
          primary: const Color.fromRGBO(255, 75, 58, 1),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomePage(),
      // home: const Map(),
    );
  }
}

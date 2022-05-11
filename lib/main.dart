import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/education.dart';
import 'views/experience.dart';
import 'views/contact_me.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andrew Thibaudeau',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.brown.shade400,
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(20, 10),
            padding: EdgeInsets.all(18),
            elevation: 2,
            textStyle: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ),
      home: const HomePage(),
      // initialRoute: "/views/home.dart",
      routes: {
        "/views/home.dart": (context) => const HomePage(),
        "/views/education.dart": (context) => const Education(),
        "/views/experience.dart": (context) => const Experience(),
        "/views/contact_me.dart": (context) => const ContactMe()
      },
    );
  }
}

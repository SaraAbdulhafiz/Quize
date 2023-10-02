import 'package:flutter/material.dart';
import 'package:quize/home_screen.dart';
import 'package:quize/second_screen.dart';

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
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SecondScreen.routeName: (context) => SecondScreen(),
      },
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFFF027A48),
          unselectedItemColor: Color(0xFFF667085),
        ),
      ),
    );
  }
}

import 'package:cc206_cictscape/screens/loginscreen.dart';
import 'package:cc206_cictscape/screens/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:cc206_cictscape/components/home_drawer.dart';

void main()  {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purr Patrol App',
      home: const LoginPage(),
      routes: {
        '/welcomeScreen': (BuildContext ctx) => const WelcomePage(),
        '/loginPage': (BuildContext ctx) => const LoginPage(),
        '/homeScreen': (BuildContext ctx) => const HomeScreen(),
      },
      initialRoute: '/welcomeScreen',
    );
  }
}
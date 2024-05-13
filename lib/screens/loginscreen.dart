// ignore_for_file: avoid_print, duplicate_ignore, deprecated_member_use

import 'package:cc206_cictscape/components/home_drawer.dart';
import 'package:flutter/material.dart';
import 'package:cc206_cictscape/screens/signupscreen.dart';

void main() {
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
        '/homeScreen': (BuildContext ctx) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Color
          Container(
            color: const Color(0xFFFFF96B),
          ),
          // Welcome Text
          const Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Text.rich(
              TextSpan(
                text: 'Let\'s Get\n',
                style: TextStyle(
                  color: Color(0xFF121212),
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
                children: [
                  TextSpan(
                    text: 'Started!',
                    style: TextStyle(
                      color: Color(0xFF121212),
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Email Input
          Positioned(
            top: 300,
            left: 50,
            right: 50,
            height: 50,
            child: TextFormField(
              style: const TextStyle(color: Color(0xFF121212)), // Set text color
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: const TextStyle(color: Color(0xFF9E9E9E)),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Color(0xFF121212), // Set icon color
                ),
                filled: true,
                fillColor: Colors.white, // Set background color
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF121212)),
                  borderRadius: BorderRadius.circular(10.0), // Set border radius
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF121212)),
                  borderRadius: BorderRadius.circular(10.0), // Set border radius
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0), // Set vertical padding
              ),
            ),
          ),
          // Password Input
          Positioned(
            top: 380,
            left: 50,
            right: 50,
            height: 50,
            child: TextFormField(
              obscureText: true,
              style: const TextStyle(color: Color(0xFF121212)), // Set text color
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(color: Color(0xFF9E9E9E)),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color(0xFF121212), // Set icon color
                ),
                filled: true,
                fillColor: Colors.white, // Set background color
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF121212)),
                  borderRadius: BorderRadius.circular(10.0), // Set border radius
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF121212)),
                  borderRadius: BorderRadius.circular(10.0), // Set border radius
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0), // Set vertical padding
              ),
            ),
          ),
          // Signup Button
          Positioned(
            bottom: 125,
            left: 125,
            right: 115,
            child: SizedBox(
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Login button pressed"); // Add this line for debugging
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  // ignore: deprecated_member_use
                  foregroundColor: const Color(0xFF121212), side: const BorderSide(
                    color: Color(0xFF121212), // Set border color
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Set border radius
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF121212), // Set text color
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Login Button
          Positioned(
            bottom: 200,
            left: 125,
            right: 115,
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print("Login button pressed"); // Add this line for debugging
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: const Color(0xFF121212),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Color(0xFF121212)),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

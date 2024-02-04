import 'package:flutter/material.dart';
import 'profileScreen.dart';
import 'screens/cartScreen.dart';
import 'screens/firstScreen.dart';
import 'screens/loginScreen.dart';
import 'screens/mainScreen.dart';
import 'screens/registerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Karla'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/first': (context) => FirstScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/main': (context) => MainScreen(),
        '/cart': (context) => CartScreen(),
        '/profile': (context) => ProfilScreen(),
      },
      home: FirstScreen(),
    );
  }
}

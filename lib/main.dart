import 'package:flutter/material.dart';
import 'package:food_app/screens/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.normal,
            color: Colors.black.withOpacity(.5),
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
      ),
      home: SinginScreen(),
    );
  }
}

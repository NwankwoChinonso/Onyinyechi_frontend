import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const OnyinyechiApp());
}

class OnyinyechiApp extends StatelessWidget {
  const OnyinyechiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onyinyechi App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'YourCustomFont', // Optional if you want custom text
      ),
      home: const HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Examples',
      debugShowCheckedModeBanner: false,
      // Definim el tema de l'aplicacicó. Fem ús de l'esquema de colors Teal
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      // Widget principal
      home: const HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme:const AppBarTheme(color: Color(0xFF23263A)),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white)
        ),

      ),
      home: const InputPage(),
    );
  }
}


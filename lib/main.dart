import 'package:calculator/calculator.dart';
import 'package:calculator_app/home_page.dart';
import 'package:calculator_app/inherited_widgets/inherited_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CalculatorApp(
      calculator: Calculator(),
    ),
  );
}

class CalculatorApp extends StatelessWidget {
  final Calculator calculator;

  const CalculatorApp({
    super.key,
    required this.calculator,
  });

  @override
  Widget build(BuildContext context) {
    return InheritedCalculator(
      calculator: calculator,
      child: MaterialApp(
        title: 'Calculator',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
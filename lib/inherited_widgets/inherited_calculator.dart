import 'package:calculator/calculator.dart';
import 'package:flutter/widgets.dart';

class InheritedCalculator extends InheritedWidget {
  const InheritedCalculator({
    super.key,
    required this.calculator,
    required super.child,
  });

  final Calculator calculator;

  static InheritedCalculator of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCalculator>()!;
  }

  @override
  bool updateShouldNotify(InheritedCalculator oldWidget) {
    return calculator != oldWidget.calculator;
  }
}
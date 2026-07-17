

import 'dart:math';

import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

import '../assertion/custom_assert.dart';


void main() {
late Calculator calculator;
   setUpAll(() {  print("Equivala to Before Class");});
   setUp(() { print("Equivala to Before Method");  
    calculator = Calculator();});
   tearDown(() { print("Equivala to After Method");});
   tearDownAll(() {  print("Equivala to After Class");});
    group('Calculator Tests', () {
  test('Calculator test', () {
    // This is a placeholder for the main function in the calculator test file.
    // You can add your test cases here to validate the functionality of your calculator.
  });
  group('Addition Tests', () {
  test('Addition test: should return the correct sum', () {
    // Example test case for addition
    //Arrange

    double a = 2;
    double b = 3;
    //Act
    double result = calculator.add(a, b);
    //Assert
    expect(result, MyCustomMatcher(5.0), reason: 'Expected sum of $a and $b to be 5.0');
  });
  
  });

  group('Subtraction Tests', () {
  test('Subtraction test: should return the correct difference', () {
    double a = 5;
    double b = 3;
    double result = calculator.substract(a, b);
    expect(result, MyCustomMatcher(2.0), reason: 'Expected difference of $a and $b to be 2.0');
});
});

  group('Multiplication Tests', () {
  test('Multiplication test: should return the correct product', () {
    double a = 4;
    double b = 3;
    double result = calculator.multiply(a, b);
    expect(result, MyCustomMatcher(12.0), reason: 'Expected product of $a and $b to be 12.0');
  });
});

  group('Division Tests', () {
  test('Division test: should return the correct quotient', () {

    double a = 10;
    double b = 2;
    double result = calculator.divide(a, b);
    expect(result, equals(5.0), reason: 'Expected quotient of $a and $b to be 5.0');
  });

   test('Division test: should throw an error when dividing by zero', () {

    double a = 10;
    double b = 0;
    expect(() => calculator.divide(a, b), throwsArgumentError, reason: 'Expected division by zero to throw ArgumentError');
  });
});
group('Power of Two Tests', () {
    
    test('Power of Two test: should return the correct square', () async {
    double a = 4;
    double result = await calculator.powerOfTwo(a);
    expect(result, equals(16.0), reason: 'Expected square of $a to be 16.0');
  });
  });
    });
}


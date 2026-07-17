import 'package:test/test.dart';

class MyCustomMatcher extends CustomMatcher {
  MyCustomMatcher(double expectedValue)
      : super(
          'My custom matcher',
          'custom property',
          (item) => item == expectedValue,
        );

  @override
  Description describeMismatch(
      item, Description mismatchDescription, Map matchState, bool verbose) {
    if (item is! String) {
      return mismatchDescription.add('is not a String');
    } else if (item.length <= 5) {
      return mismatchDescription.add('has length ${item.length}, which is not greater than 5');
    }
    return mismatchDescription;
  }
}
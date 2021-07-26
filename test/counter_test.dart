import 'package:flutter_test/flutter_test.dart';

int add(int a, int b) {
  // No Proccess
  return a + b;
}

void main() {
  test('Test Add function', () {
    expect(3, add(1, 2));
  }); // Test Case
  test('Test Failed Add Function', () {
    expect(4, isNot(add(1, 2)));
  });
}

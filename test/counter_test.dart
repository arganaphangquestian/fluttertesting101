import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Failed Test", () {
    expect("1", isNot("2"));
  });
}

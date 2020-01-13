import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_example/app/shared/services/dio/custom_dio.dart';



void main() {
  CustomDio service;

  setUp(() {
    service = CustomDio();
  });

  group('CustomDio Test', () {
    test("First Test", () {
      expect(service, isInstanceOf<CustomDio>());
    });
  });
}

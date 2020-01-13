import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';
import 'package:mobx_example/app/shared/services/dio/custom_dio.dart';
import 'package:mobx_example/app/shared/services/dio/mock/mock_data.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:mobx_example/app/modules/home/home_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  HomeRepository repository;
  CustomDio client;

  setUp(() {
    client = CustomDio(isMock: true);
    repository = HomeRepository(client);
  });

  group('HomeRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<HomeRepository>());
    });

    test('Get list Products(3)', () async {
      final List<ProductModel> products = await repository.getProducts();
      expect(products.length, 3);
    });

     test('Get first product', () async {
      final List<ProductModel> products = await repository.getProducts();
      expect(products.first, ProductModel.fromJson(MOCKDATA['/products'][0]));
    });
  });
}

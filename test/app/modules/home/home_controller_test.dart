import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_example/app/modules/home/home_controller.dart';
import 'package:mobx_example/app/modules/home/home_module.dart';
import 'package:mobx_example/app/modules/home/home_repository.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';
import 'package:mobx_example/app/shared/services/dio/custom_dio.dart';
import 'package:mobx_example/app/shared/services/dio/mock/mock_data.dart';

void main() {
  
  HomeController home;
  CustomDio client;
  HomeRepository repository;
  setUp(() {
    client = CustomDio(isMock: true);
    repository = HomeRepository(client);
    home = HomeController(repository);
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

    test("Get products", () async{
     await home.getProduct(); 
     await Future.delayed(Duration(seconds: 1));
     expect(home.products, MOCKDATA['/products'].map((i) => ProductModel.fromJson(i)).toList());
    });
  });
}

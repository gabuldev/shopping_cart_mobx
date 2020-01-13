
import 'package:mobx_example/app/shared/models/product_model.dart';
import 'package:mobx_example/app/shared/services/dio/custom_dio.dart';

class HomeRepository {

  final CustomDio _client;

  HomeRepository(this._client);

  Future<List<ProductModel>> getProducts() async {
    await Future.delayed(Duration(seconds: 1));
    final response =
        await _client.get("/products");
    return (response.data as List).map((i) => ProductModel.fromJson(i)).toList();
  }

}

import 'package:mobx/mobx.dart';
import 'package:mobx_example/app/modules/home/home_repository.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {

  final HomeRepository _repository;

  @observable
  List<ProductModel> products = <ProductModel>[];

  _HomeBase(this._repository);

  @action
  Future<void> getProduct() async{
    products = await _repository.getProducts();
  }

}

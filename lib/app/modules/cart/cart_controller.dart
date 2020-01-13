import 'package:mobx/mobx.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';

part 'cart_controller.g.dart';

class CartController = _CartBase with _$CartController;

abstract class _CartBase with Store {

  @observable
  List<ProductModel> produtcs = <ProductModel>[];

  @action
  void add(ProductModel product) {
    this.produtcs.add(product);
  }

  @action
  void remove(ProductModel product){
    this.produtcs.remove(product);
  }

  @action 
  void alter(ProductModel product){
    final index = this.produtcs.indexWhere((i) => i == product);
    this.produtcs.removeAt(index);
    this.add(product);
  }

  @action
  void addQtd(ProductModel product){
    product.qtd++;
    this.alter(product);
  }

  @action
  void removeQtd(ProductModel product){
    if(product.qtd > 0){
    product.qtd--;
    this.alter(product);
    }else{
      this.remove(product);
    }
  }
}

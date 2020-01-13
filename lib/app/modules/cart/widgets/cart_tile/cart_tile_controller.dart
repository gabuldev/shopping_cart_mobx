import 'package:mobx/mobx.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';

part 'cart_tile_controller.g.dart';

class CartTileController = _CartTileBase with _$CartTileController;

abstract class _CartTileBase with Store {
  @observable
  ProductModel product;

  _CartTileBase(this.product);

  @action
  void increment(){
    product.qtd++;
  }

  @action
  void decrement(){
    if(product.qtd>0){
      product.qtd--;
    }
  }
}

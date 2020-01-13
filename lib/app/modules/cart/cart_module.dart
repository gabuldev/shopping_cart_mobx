import 'package:mobx_example/app/modules/cart/widgets/cart_tile/cart_tile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_example/app/modules/cart/cart_page.dart';

class CartModule extends ChildModule {
  @override
  List<Bind> get binds => [  ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CartPage()),
      ];

  static Inject get to => Inject<CartModule>.of();
}

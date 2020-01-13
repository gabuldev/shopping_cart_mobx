/*import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_example/app/modules/cart/widgets/cart_tile/cart_tile_controller.dart';
import 'package:mobx_example/app/modules/cart/cart_module.dart';

void main() {
  initModule(CartModule());
  CartTileController carttile;

  setUp(() {
    carttile = CartModule.to.get<CartTileController>();
  });

  group('CartTileController Test', () {
    test("First Test", () {
      expect(carttile, isInstanceOf<CartTileController>());
    });

    test("Set Value", () {
      expect(carttile.value, equals(0));
      carttile.increment();
      expect(carttile.value, equals(1));
    });
  });
}*/
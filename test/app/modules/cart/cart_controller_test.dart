import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_example/app/modules/cart/cart_controller.dart';
import 'package:mobx_example/app/modules/cart/cart_module.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';

void main() {
  initModule(CartModule());
  CartController cart;

  setUp(() {
    cart = CartModule.to.get<CartController>();
  });

  group('CartController Test', () {
    test("First Test", () {
      expect(cart, isInstanceOf<CartController>());
    });

    test("Add Product in cart", () {
      final prod = ProductModel(id: 0,description: "a",name: "a",photo: "a",price: 10);
      cart.add(prod);
      expect(cart.produtcs.first, equals(prod));
      expect(prod.name, cart.produtcs.first.name);
    });

    test("Remove Product in cart", () {
      final prod = ProductModel(id: 0,description: "a",name: "a",photo: "a",price: 10);
      cart.add(prod);
      cart.remove(prod);
      expect(cart.produtcs.length, 0);
    });

      test("Alter Product in cart", () {
      final prod = ProductModel(id: 0,description: "a",name: "a",photo: "a",price: 10);
      cart.add(prod);
      prod.name = "b";
      cart.alter(prod);
      expect(cart.produtcs.last.name, "b");
    });
  });
}

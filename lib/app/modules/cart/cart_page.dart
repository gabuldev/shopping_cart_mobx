import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/app/modules/cart/cart_controller.dart';

import '../../app_module.dart';
import 'widgets/cart_tile/cart_tile_widget.dart';

class CartPage extends StatefulWidget {
  final String title;
  const CartPage({Key key, this.title = "Cart"}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var controller = AppModule.to.get<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (_) {
          if (controller.produtcs.length > 0) {
            var list = controller.produtcs;
            return ListView.builder(
              itemCount: controller.produtcs.length,
              itemBuilder: (context, index) => CartTileWidget(
                key: UniqueKey(),
                snapshot: list[index],
                add: () {
                  controller.addQtd(list[index]);
                },
                remove: () {
                  controller.removeQtd(list[index]);
                },
              ),
            );
          }else{
            return Text("Nenhum produto ainda");
          }
        },
      ),
    );
  }
}

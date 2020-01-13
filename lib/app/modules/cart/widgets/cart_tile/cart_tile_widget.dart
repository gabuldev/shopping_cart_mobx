import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/app/modules/cart/cart_controller.dart';
import 'package:mobx_example/app/modules/cart/widgets/cart_tile/cart_tile_controller.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';

class CartTileWidget extends StatefulWidget {
  final ProductModel snapshot;
  final Function add;
  final Function remove;

  const CartTileWidget({Key key, this.snapshot, this.add, this.remove})
      : super(key: key);

  @override
  _CartTileWidgetState createState() => _CartTileWidgetState();
}

class _CartTileWidgetState extends State<CartTileWidget> {

  var controller;

  @override
  void initState() {
  controller = CartTileController(widget.snapshot);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.snapshot.name),
      subtitle: Text(widget.snapshot.description),
      leading: Image.network(widget.snapshot.photo),
      trailing: Observer(
        builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: controller.decrement,
          ),
          Text("${controller.product.qtd}"),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: controller.increment,
          )
        ],
      ),
      )
    );
  }
}

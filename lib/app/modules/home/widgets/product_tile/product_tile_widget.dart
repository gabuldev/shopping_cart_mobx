import 'package:flutter/material.dart';
import 'package:mobx_example/app/app_module.dart';
import 'package:mobx_example/app/modules/cart/cart_controller.dart';
import 'package:mobx_example/app/shared/models/product_model.dart';

class ProductTileWidget extends StatelessWidget {
    final ProductModel snapshot;

  const ProductTileWidget({Key key, this.snapshot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(snapshot.name),
      subtitle: Text(snapshot.description),
      leading: CircleAvatar(backgroundImage: NetworkImage(snapshot.photo),),
      onTap: (){
        AppModule.to.get<CartController>().add(snapshot);
        Navigator.pushNamed(context, "/cart");
      },
    );
  }
}

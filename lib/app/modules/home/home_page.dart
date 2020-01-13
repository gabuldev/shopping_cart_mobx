import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/app/modules/home/home_controller.dart';
import 'package:mobx_example/app/modules/home/home_module.dart';
import 'package:mobx_example/app/modules/home/widgets/product_tile/product_tile_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeModule.to.get<HomeController>();

  @override
  void initState() {
    controller.getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Observer(builder: (_) {
          if (controller.products.length > 0) {
            return ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) => ProductTileWidget(
                      snapshot: controller.products[index],
                    ));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }));
  }
}

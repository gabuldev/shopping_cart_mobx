import 'package:mobx_example/app/modules/cart/cart_controller.dart';
import 'package:mobx_example/app/modules/cart/cart_module.dart';
import 'package:mobx_example/app/shared/services/dio/custom_dio.dart';
import 'package:mobx_example/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mobx_example/app/app_widget.dart';
import 'package:mobx_example/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomDio(isMock: true)),
        Bind((i) => AppController()),
        Bind((i) => CartController())
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/cart',module: CartModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

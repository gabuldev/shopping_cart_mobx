import 'package:mobx_example/app/app_module.dart';
import 'package:mobx_example/app/modules/home/home_repository.dart';
import 'package:mobx_example/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_example/app/modules/home/home_page.dart';
import 'package:mobx_example/app/shared/services/dio/custom_dio.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository(AppModule.to.get<CustomDio>())),
        Bind((i) => HomeController(to.get<HomeRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

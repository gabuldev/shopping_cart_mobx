import 'package:dio/native_imp.dart';
import 'package:dio_interceptors/dio_interceptors.dart';
import 'package:mobx_example/app/shared/constants.dart';
import 'package:mobx_example/app/shared/services/dio/mock/mock_data.dart';

class CustomDio extends DioForNative {
  final bool isMock;

  CustomDio({this.isMock = false}){
    if(isMock){
     interceptors.add(InterceptorMock(MOCKDATA));
    }
    else{
      options.baseUrl = BASE_URL;
    }
  }
}

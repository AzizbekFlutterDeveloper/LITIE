import 'dart:io';
import 'package:dio/dio.dart';
import 'package:litie/core/constants/api_const/api_const.dart';
import 'package:litie/core/constants/enums/locale_keys_enum.dart';
import 'package:litie/core/init/cache/locale_manager.dart';
import 'package:litie/core/network/network_model/base_model.dart';


class NetwrokManeger {
  static final NetwrokManeger _instance = NetwrokManeger._init();
  static NetwrokManeger get instance => _instance;

  NetwrokManeger._init() {
    final baseOptions = BaseOptions(
      baseUrl: ApiConst.BASE_URL,
      headers: {
        "Authorization": "Bearer ${LocaleManeger.instance.getStringValue(PreferenceKeys.TOKEN)!}"
      },
    );
    _dio = Dio(baseOptions);
    // _dio!.interceptors.add(
    //   InterceptorsWrapper(
    //     onError: (e, m) {},
    //     onRequest: (e, m) {},
    //   ),
    // );
  }

  Dio? _dio;

  Future GET<T extends BaseModel>(String path, T model) async {
    Response response = await _dio!.get(path);
    switch (response.statusCode) {
      case HttpStatus.ok:
        var responseBody = response.data;
        if (responseBody is List) {
          var data = responseBody.map((e) => model.fromJson(e)).toList();
          return data;
        } else if (responseBody is Map) {
          return model.fromJson(responseBody);
        }
        return responseBody;
      case HttpStatus.internalServerError:
        return HttpStatus.internalServerError;
    }
  }

  Future<dynamic> POST({required String path, required dynamic data}) async {
    try {
      Response res = await _dio!.post(path, data: data);
      return res.data.toString();
    } on DioError catch (e) {
      return e.message.toString();
    }
  }

  Future PUT({required String path, required dynamic data}) async {
    try {
      Response res = await _dio!.put(path, data: data);
      return res.data;
    } on DioError catch (e) {
      return e.message;
    }
  }

  
}

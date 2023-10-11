import 'package:dio/dio.dart';

import '../model/base_response.dart';
import '../models/base/base_response_model.dart';
import '../models/auth/auth_info.dart';
import '../utils/constants.dart';

class RequestService {
  RequestService._instance();

  static RequestService instance = RequestService._instance();

  factory RequestService() {
    return instance;
  }

  Future<BaseResponse> get(
    String api, {
    Map<String, dynamic>? query,
    bool needAuth = true,
  }) async {
    if (needAuth) {
      (query ??= {}).addEntries(
        AuthInfo.instance.authQuery.entries,
      );
    }
    final dio = Dio();
    final rawRes = await dio.get(
      API.host + api,
      queryParameters: query,
    );
    return BaseResponse.fromJson(
      rawRes.data,
    );
  }
}

import 'base_api.dart';
import 'package:http/http.dart' show Client, Response;

import "../models/user.dart";

class UserApi extends API implements BaseAPI {
  @override
  Future<User> fetch() async {
    Response response = await client.get("$url/user");

    switch (response.statusCode) {
      //http 응답값에 대한 처리
      case 200:
        return User.fromJson(json.decode(response.body));
        break;
      case 400:
        throw Exception('Login faild'); //에러나 응답이 잘못된경우는 Throw로 에러 전송
        break;
    }
  }

  // 각각 위와 같은 방식으로 구현

  @override
  Future<User> setData() {
    return null;
  }

  @override
  Future<bool> delete() {
    return null;
  }

  @override
  Future<bool> update() {
    return null;
  }
}

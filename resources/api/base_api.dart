import "../models/user.dart";

abstract class BaseAPI {
  Future<User> fetch();
  Future<User> setData();
  Future<bool> update();
  Future<bool> delete();
}

class API {
  String url;

  API() {
    url = "https://nodeapi.fanzy.io"; //릴리즈 모드일시

    assert(() {
      url = "http://test.fanzy.io:3000"; //디버그 모드일시
      return true;
    }());
  }
}

API api = API();

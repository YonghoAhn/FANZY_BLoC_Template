// 모델 의 선언
class User {
  int id;
  String name;
  String email;
  String avatar;
  String avatarOriginal;
  String walletAddress;
  String theme;
  String searchHistory;
  String balance;

  User.fromJson(Map<String, dynamic> userMap) {
    //named 생성자를 사용하여 데이터 입력
    this.id = userMap["id"];
    this.name = userMap["name"];
    this.email = userMap["email"];
    this.avatar = userMap["avatar"];
    this.avatarOriginal = userMap["avatar_original"];
    this.walletAddress = userMap["hash"];
    this.theme = userMap["theme"];
    this.searchHistory = userMap["search_history_quries"];
  }
}

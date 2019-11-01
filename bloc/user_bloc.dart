import 'package:rxdart/rxdart.dart';
import '../resources/api/api_provider.dart';
import '../resources/models/user.dart';
import 'base_bloc.dart';

class UserBloc extends BaseBloc {
  final ApiProvider apiProvider = ApiProvider();
  final _userFetcher = PublishSubject<User>(); //rx를 사용할경우

  final counterController = StreamController();
  Stream get getCount => counterController.stream;
  // 스트림 컨트롤러를 사용 할경우

  Observable<User> get allMovies => _userFetcher.stream;

  fetchAllMovies() async {
    User itemModel = await _repository.fetchAllMovies();
    _userFetcher.sink.add(itemModel);
  }

  @override
  void dispose() {
    _userFetcher.close();

    //디스 포즈될시에
  }
}

final bloc = UserBloc();

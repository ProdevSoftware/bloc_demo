import 'package:bloc_demo/fetch_data/model/user_response.dart';
import 'package:bloc_demo/fetch_data/services/user_repository_interface.dart';
import 'package:dio/dio.dart';

class UserRepository extends IUserRepository {
  late final Dio _dio;

  UserRepository(this._dio);

  @override
  Future<List<User>?> getUser() async {
    try {
      print('dd');
      final response = await _dio.get('/users');
      print('${response.data}');
      print('after user call');
      if (response.statusCode == 200) {
        List<User>? userList =
            (response.data as List).map((json) => User.fromJson(json)).toList();
        return userList;
      } else {
        print('failed to data ${response.statusCode}');
      }
    } catch (e) {
      //return InternalError();
      print(e.toString());
    }
  }
}

import '../model/user_response.dart';

abstract class IUserRepository {
  Future<List<User>?> getUser();
}

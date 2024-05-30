
import 'package:bloc_demo/presentation/fetch_data/repository/user_repository.dart';
import 'package:dio/dio.dart';


class ApiClient {
  late final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://api.escuelajs.co/api/v1/',
    receiveTimeout: const Duration(minutes: 1),
    connectTimeout: const Duration(minutes: 1),
  ));

  late UserRepository userRepository = UserRepository(_dio);


}

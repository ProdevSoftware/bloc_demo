
import 'package:dio/dio.dart';

import '../../fetch_data/services/user_repository.dart';

class ApiClient {
  late final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://api.escuelajs.co/api/v1/',
    receiveTimeout: const Duration(minutes: 1),
    connectTimeout: const Duration(minutes: 1),
  ));

  late UserRepository userRepository = UserRepository(_dio);


}

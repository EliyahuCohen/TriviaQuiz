import 'package:frontend/types/types.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
// Import your modified User class here

part 'api_service.g.dart';

@RestApi(baseUrl: "http://localhost:3000")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService getApi(){
    Dio dio = new Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    ApiService apiService = new ApiService(dio);
    return apiService;
  }

  @POST("/login")
  Future<UserResponse> login(@Body() LoginRequest request);

  @POST("/signup")
  Future<UserResponse> signup(@Body() SignUpRequest request);
}

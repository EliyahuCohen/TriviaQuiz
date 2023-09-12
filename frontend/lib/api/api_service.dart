import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:frontend/models/user.dart'; // Import your modified User class here

part 'api_service.g.dart';

@RestApi(baseUrl: "http://localhost:3000")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/login")
  Future<User> login(@Body() User request);

  @POST("/signup")
  Future<User> signup(@Body() User request);
}

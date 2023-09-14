import 'package:frontend/models/quiz_question.dart';
import 'package:frontend/models/score.dart';
import 'package:frontend/types/types.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
// Import your modified User class here

part 'api_service.g.dart';

@RestApi(baseUrl: "http://localhost:3000")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService getApi() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    ApiService apiService = ApiService(dio);
    return apiService;
  }

  @POST("/login")
  Future<UserResponse> login(@Body() LoginRequest request);

  @POST("/signup")
  Future<UserResponse> signup(@Body() SignUpRequest request);

  // Modify the method to accept a token parameter
  @GET("/trivia")
  Future<List<QuizQuestion>> getQuestions(
      @Header('Authorization') String token);

  @POST("/trivia/new")
  Future<dynamic> postTrivia(
      @Body() TriviaRequest request, @Header('Authorization') String token);

  @GET("/trivia/score")
  Future<List<Score>> getScores(@Header('Authorization') String token);
}

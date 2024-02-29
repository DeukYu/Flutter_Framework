import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'repository.g.dart';

@RestApi()
abstract class AuthRepository {
  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;

  @POST("/auth")
  Future<void> ReqAuth();
}

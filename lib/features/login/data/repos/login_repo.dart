import 'package:blink2/core/networking/api_service.dart';
import 'package:blink2/core/networking/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<Either<Failure, dynamic>> login(
      {required String email, required String password}) async {
    try {
      var response = await apiService.post(
        endPoint: 'users/authenticate',
        body: {
          'email': email,
          'password': password,
        },
      );
      return right(response['code']);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(e.toString()),
        );
      }
    }
  }
}

import 'package:dio/dio.dart';
import 'package:ripple/core/network/dio_client.dart';

class AuthService {
  Future<void> register({
    required String fullName,
    required String email,
    required String username,
    required String password,
  }) async {
    try {
      final response = await DioClient.dio.post(
        "/users/register",
        data: {
          "fullName": fullName,
          "email": email,
          "username": username,
          "password": password,
        },
      );

      if (response.statusCode != 201) {
        throw Exception("Registration failed");
      }
    } on DioException catch (e) {
      throw Exception(
        e.response?.data["message"] ?? "Something went wrong",
      );
    }
  }
}
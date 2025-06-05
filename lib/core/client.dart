import 'package:ayol_uchun/data/models/authentication/auth_model.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final dio = Dio(BaseOptions(baseUrl: "http://192.168.0.103:8888/api/v1"));

  Future<T> getGenericRequest<T>(String path, {Map<String, dynamic>? queryParams}) async {
    final response = await dio.get(
      path,
      queryParameters: queryParams,
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZV9udW1iZXIiOiIrOTk4OTM5NDQxMzM0IiwianRpIjoiMDFiODExYmItMjJlZS00YWM3LWEyYzUtYmU0YTRjNjliYmI4IiwidXNlcmlkIjoiMyIsImV4cCI6MTg0MzcyNDI0OCwiaXNzIjoibG9jYWxob3N0IiwiYXVkIjoiYXVkaWVuY2UifQ.56ruMQTPyXSnik3WOtDDxiT5NFVvVP_T5GxYAwMNSGM ',
        },
      ),
    );
    if (response.statusCode == 200) {
      return response.data as T;
    } else {
      throw Exception("GET: $path, ${queryParams.toString()} - ${response.statusCode} - ${response.data}");
    }
  }

  Future<String> postLogin(String phoneNumber, String password) async {
    final response = await dio.post("/auth/login", data: {"login": phoneNumber, "password": password});
    if (response.statusCode == 200) {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return data['accessToken']!;
    } else {
      throw Exception("Login error");
    }
  }

  Future<bool> postSignUp(AuthModel model) async {
    final response = await dio.post("/auth/register", data: model.toJson());
    print(model.toJson());
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}

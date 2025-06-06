import 'package:ayol_uchun/data/models/authentication/auth_model.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final dio = Dio(BaseOptions(baseUrl: "http://192.168.0.102:8888/api/v1"));

  Future<T> getGenericRequest<T>(String path, {Map<String, dynamic>? queryParams}) async {
    final response = await dio.get(
      path,
      queryParameters: queryParams,
      options: Options(
        validateStatus: (_) => true,
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZV9udW1iZXIiOiIrOTk4OTM5NDQxNTI0IiwianRpIjoiMzA4OTA5NDctZTU4ZS00NDllLTkyM2UtOTMwMmM1NWU5OTY5IiwidXNlcmlkIjoiMyIsImV4cCI6MTg0Mzg4ODI5NiwiaXNzIjoibG9jYWxob3N0IiwiYXVkIjoiYXVkaWVuY2UifQ.xnlVXhuZdTPGhTJuRVDZScJTXbVa0xQGwaW27WikQgI',
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
    final response = await dio.post("/authentication/login", data: {"login": phoneNumber, "password": password});
    if (response.statusCode == 200) {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return data['accessToken']!;
    } else {
      throw Exception("Login error");
    }
  }

  Future<bool> postSignUp(AuthModel model) async {
    final response = await dio.post("/authentication/register", data: model.toJson());
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<dynamic>> fetchInterviews() async {
    final response = await dio.get(
      "/interviews/list",
      options: Options(
        validateStatus: (_) => true,
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZV9udW1iZXIiOiIrOTk4OTM5NDQxNTI0IiwianRpIjoiMzA4OTA5NDctZTU4ZS00NDllLTkyM2UtOTMwMmM1NWU5OTY5IiwidXNlcmlkIjoiMyIsImV4cCI6MTg0Mzg4ODI5NiwiaXNzIjoibG9jYWxob3N0IiwiYXVkIjoiYXVkaWVuY2UifQ.xnlVXhuZdTPGhTJuRVDZScJTXbVa0xQGwaW27WikQgI',
        },
      ),
    );
    if (response.statusCode == 200) {
      print(response.data);
      return response.data;
    } else {
      throw Exception("Interviews error");
    }
  }

  Future<List<dynamic>> fetchSocialAccount() async {
    final response = await dio.get(
      "/social-accounts/list",
      options: Options(
        validateStatus: (_) => true,
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZV9udW1iZXIiOiIrOTk4OTM5NDQxNTI0IiwianRpIjoiMzA4OTA5NDctZTU4ZS00NDllLTkyM2UtOTMwMmM1NWU5OTY5IiwidXNlcmlkIjoiMyIsImV4cCI6MTg0Mzg4ODI5NiwiaXNzIjoibG9jYWxob3N0IiwiYXVkIjoiYXVkaWVuY2UifQ.xnlVXhuZdTPGhTJuRVDZScJTXbVa0xQGwaW27WikQgI',
        },
      ),
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Social Account error");
    }
  }
}

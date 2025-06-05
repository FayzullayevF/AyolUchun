import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/authentication/auth_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/secure_storage.dart';

class AuthRepository {
  AuthRepository({required this.client});

  final ApiClient client;
  String? jwt;

  Future<bool> login(String phoneNumber, String password) async {
    jwt = await client.postLogin(phoneNumber, password);
    await SecureStorage.deleteCredentials();
    await SecureStorage.deleteToken();
    await SecureStorage.saveToken(jwt!);
    await SecureStorage.saveCredentials(login: phoneNumber, password: password);
    return true;
  }

  Future<bool> signUp({
    required String firstName,
    required String lastName,
    required String email,
  }) async {
    final result = await client.postSignUp(
      AuthModel(firstName: firstName, lastName: lastName, email: email,),
    );
    return result;
  }
}

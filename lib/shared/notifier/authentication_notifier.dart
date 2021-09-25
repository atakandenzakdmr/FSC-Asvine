import 'package:flutter/material.dart';
import 'package:asvine/shared/service/authentication_service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService = new AuthenticationService();

  Future<String?> signup({
    required String email,
    required String password,
  }) async {
    try {
      await _authenticationService.signup(email: email, password: password);
    } catch (e) {
      print(e);
    }
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      await _authenticationService.login(email: email, password: password);
    } catch (e) {
      print(e);
    }
  }
}

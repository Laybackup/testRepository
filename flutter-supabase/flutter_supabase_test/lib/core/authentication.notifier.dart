import 'package:flutter/material.dart';
import 'package:flutter_supabase_test/service/authentication.service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<String?> signup({
    required String email,
    required String password,
  }) async {
    try {
      await _authenticationService.signup(
        email: email,
        password: password,
      );
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

  Future<String?> loginWithPhoneNumber({
    required String phoneNumber,
  }) async {
    try {
      await _authenticationService.sendVerificationCode(
          phoneNumber: phoneNumber);
    } catch (e) {
      print(e);
    }
  }
}

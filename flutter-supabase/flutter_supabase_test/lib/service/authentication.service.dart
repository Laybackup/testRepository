import 'package:flutter_supabase_test/credentials/supabase.credentials.dart';
import 'package:supabase/supabase.dart';

class AuthenticationService {
  Future<void> signup({
    required String email,
    required String password,
  }) async {
    AuthResponse response = await SupabaseCredentials.supabaseClient.auth
        .signUp(
            email: email, password: password, data: {'username': 'liudehua'});

    final Session? session = response.session;
    final User? user = response.user;

    if (session != null || user != null) {
      String? userEmail = response.user!.email;
      print("Signup Successful: user email is $userEmail");
    } else {
      print("Signup Error");
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    AuthResponse response = await SupabaseCredentials.supabaseClient.auth
        .signInWithPassword(email: email, password: password);

    final Session? session = response.session;
    final User? user = response.user;

    if (session != null || user != null) {
      String? userEmail = response.user!.email;
      print("Login Successful: user email is $userEmail");
    } else {
      print("Login Error");
    }
  }

  Future sendVerificationCode({
    required String phoneNumber,
  }) async {
    try {
      AuthResponse response =
          await SupabaseCredentials.supabaseClient.auth.signInWithPassword(
        password: phoneNumber,
      );
    } catch (e) {
      print(e);
    }
  }
}

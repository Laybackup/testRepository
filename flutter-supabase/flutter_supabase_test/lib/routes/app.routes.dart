import 'package:flutter_supabase_test/meta/views/authentication/login.view.dart';
import 'package:flutter_supabase_test/meta/views/authentication/signup.view.dart';

class AppRoutes {
  static const String LoginRoute = "/login";
  static const String SignupRoute = "/signup";
  static final routes = {
    LoginRoute: (context) => LoginView(),
    SignupRoute: (context) => SignupView(),
  };
}

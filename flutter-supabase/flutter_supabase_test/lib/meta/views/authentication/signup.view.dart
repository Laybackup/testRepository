import 'package:flutter/material.dart';
import 'package:flutter_supabase_test/core/authentication.notifier.dart';
import 'package:flutter_supabase_test/routes/app.routes.dart';
import 'package:provider/provider.dart';

import '../../../service/authentication.service.dart';

class SignupView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignupViewState();
  }
}

class _SignupViewState extends State<SignupView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AuthenticationNotifier authenticationNotifier =
        Provider.of<AuthenticationNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login View"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: "Enter email"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(hintText: "Enter password"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                String email = emailController.text;
                String password = passwordController.text;

                if (email.isNotEmpty && password.isNotEmpty) {
                  authenticationNotifier.signup(
                      email: email, password: password);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("fill the blank of downLine")));
                }
              },
              child: Text("Signup"),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.LoginRoute);
              },
              child: Text("Already have an account? Login"),
            )
          ],
        ),
      ),
    );
  }
}

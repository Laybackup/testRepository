import 'package:flutter/material.dart';
import 'package:flutter_supabase_test/routes/app.routes.dart';
import 'package:provider/provider.dart';

import '../../../core/authentication.notifier.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController verifyCodeController = TextEditingController();
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
    verifyCodeController = TextEditingController();
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
                    authenticationNotifier.login(
                        email: email, password: password);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("fill the blank of downLine")));
                  }
                },
                child: Text("Login")),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  String phoneNumber = phoneNumberController.text;

                  if (phoneNumber.isNotEmpty) {
                    authenticationNotifier.loginWithPhoneNumber(
                        phoneNumber: phoneNumber);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("input your phonenumber")));
                  }
                },
                child: Text("Login with phone")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.SignupRoute);
                },
                child: Text("New here? Signup")),
          ],
        ),
      ),
    );
  }
}

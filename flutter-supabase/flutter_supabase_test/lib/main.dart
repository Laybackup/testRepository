import 'package:flutter/material.dart';
import 'package:flutter_supabase_test/app/app.provider.dart';
import 'package:flutter_supabase_test/routes/app.routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: Lava(),
      providers: AppProviders.providers,
    );
  }
}

class Lava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.LoginRoute,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      theme: ThemeData.dark(),
    );
  }
}

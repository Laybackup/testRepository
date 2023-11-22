import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../core/authentication.notifier.dart';

class AppProviders extends ChangeNotifier {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthenticationNotifier())
  ];
}

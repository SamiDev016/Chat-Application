
import 'package:chat_app/theme/light_theme.dart';
import 'package:flutter/material.dart';

import 'auth/login_or_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: LoginOrRegister(),
    );
  }
}

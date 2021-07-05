import 'package:flutter/material.dart';
import 'package:level_up_03/modules/forgot_password/forgot_password_page.dart';
import 'package:level_up_03/modules/sign_in/sign_in_page.dart';
import 'package:level_up_03/modules/sign_up/sign_up_page.dart';
import 'package:level_up_03/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LevelUp #3',
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/sign-in": (context) => const SignInPage(),
        "/sign-up": (context) => const SignUpPage(),
        "/forgot-password": (context) => const ForgotPasswordPage(),
      },
    );
  }
}

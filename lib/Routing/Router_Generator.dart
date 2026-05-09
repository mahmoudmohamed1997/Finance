import 'package:finance/Routing/App_Routes.dart';
import 'package:finance/Widgets/Forgot_Password.dart';
import 'package:finance/Widgets/LogIn_screen.dart';
import 'package:finance/Widgets/Profile.dart';
import 'package:finance/Widgets/carte_newpassword.dart';
import 'package:finance/Widgets/otp_verification.dart';
import 'package:finance/Widgets/password_changed.dart';
import 'package:finance/Widgets/register_screen.dart';
import 'package:finance/Widgets/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter routerGeneratorRoutes = GoRouter(
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    ),
    initialLocation: AppRoutes.welcomeScreen,
    routes: [
      GoRoute(
        name: AppRoutes.loginScreen,
        path: AppRoutes.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        name: AppRoutes.welcomeScreen,
        path: AppRoutes.welcomeScreen,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        name: AppRoutes.registerScreen,
        path: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        name: AppRoutes.ForgotPassword,
        path: AppRoutes.ForgotPassword,
        builder: (context, state) => ForgotPassword(),
      ),
      GoRoute(
        name: AppRoutes.OtpVerification,
        path: AppRoutes.OtpVerification,
        builder: (context, state) => const OtpVerification(),
      ),
      GoRoute(
        name: AppRoutes.caratenewpassword,
        path: AppRoutes.caratenewpassword,
        builder: (context, state) => const CarteNewpassword(),
      ),
      GoRoute(
        name: AppRoutes.passwordchanged,
        path: AppRoutes.passwordchanged,
        builder: (context, state) => const passwordchanged(),
      ),
      GoRoute(
        name: AppRoutes.profile,
        path: AppRoutes.profile,
        builder: (context, state) => Profile(),
      ),
    ],
  );
}

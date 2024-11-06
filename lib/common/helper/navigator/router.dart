import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:kodal_e_commerce/presentation/auth/pages/enter_password.dart';
import 'package:kodal_e_commerce/presentation/auth/pages/forgot_password.dart';
import 'package:kodal_e_commerce/presentation/auth/pages/signUp.dart';
import 'package:kodal_e_commerce/presentation/auth/pages/signin.dart';
import 'package:kodal_e_commerce/presentation/splash/page/splashscreen.dart';

final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();

  static const String splash = '/splash';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String forgotPassword = '/forgotPassword';
  static const String enterPassword = '/enterPassword';
  static const String home = '/home';
}

final router = GoRouter(
    navigatorKey: _routerKey,
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
          path: AppRoutes.splash, builder: (context, state) => const SplashScreen()),
      GoRoute(
          path: AppRoutes.signIn, builder: (context, state) => const SignIn()),
      GoRoute(
          path: AppRoutes.signUp, builder: (context, state) => const SignupPage()),
      GoRoute(
          path: AppRoutes.forgotPassword, builder: (context, state) => const ForgotPasswordPage()),
      GoRoute(
          path: AppRoutes.enterPassword, builder: (context, state) => const EnterPasswordPage()),
    ]
);

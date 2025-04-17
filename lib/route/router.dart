import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/ui/pages/homepage.dart';
import 'package:seamless/ui/pages/sign_in.dart';
import 'package:seamless/ui/pages/onboarding_page.dart';
import 'package:seamless/ui/pages/sign_up.dart';
import 'package:seamless/ui/pages/splashscreenpage.dart';

part 'router_name.dart';

GoRouter getRouter() {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: RoutesName.splashscreen,
        pageBuilder: (context, state) => const MaterialPage(child: Splashscreenpage()),
      ), 
      GoRoute(
        path: "/onboarding",
        name: RoutesName.onboarding,
        pageBuilder: (context, state) => const MaterialPage(child: OnboardingPage()),
        ),
      GoRoute(
        path: '/login',
        name: RoutesName.login,
        pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
      ),
      GoRoute(
        path: '/sign-up',
        name: RoutesName.signUp,
        pageBuilder: (context, state) => const MaterialPage(child: SignUpPage()),
      ),
      GoRoute(
      path: '/home', 
      name: RoutesName.home,
      pageBuilder: (context, state) => const MaterialPage(child: Homepage())
      ),
    ],
  );
}

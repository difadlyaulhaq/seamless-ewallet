import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/pages/homepage.dart';
import 'package:seamless/pages/login.dart';
import 'package:seamless/pages/splashscreenpage.dart';

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
        path: '/login',
        name: RoutesName.login,
        pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
      ),
      GoRoute(
      path: '/home', 
      name: RoutesName.home,
      pageBuilder: (context, state) => const MaterialPage(child: Homepage())
      ),
    ],
  );
}

// router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/ui/pages/homepage.dart';
import 'package:seamless/ui/pages/sign_in.dart';
import 'package:seamless/ui/pages/onboarding_page.dart';
import 'package:seamless/ui/pages/sign_up.dart';
import 'package:seamless/ui/pages/sign_up_SetIdCard.dart';
import 'package:seamless/ui/pages/sign_up_Setprofile.dart';
import 'package:seamless/ui/pages/sign_up_Succed.dart';
import 'package:seamless/ui/pages/splashscreenpage.dart';
 
import 'package:seamless/ui/pages/topuppage.dart';  
import 'package:seamless/ui/pages/sendpage.dart';    
import 'package:seamless/ui/pages/withdrawpage.dart'; 
import 'package:seamless/ui/pages/morepage.dart';

import '../ui/pages/profilepage.dart';

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
        pageBuilder: (context, state) => const MaterialPage(child: Homepage()) // Home tetap ke Homepage
      ),
      GoRoute(
        path: '/set-profile',
        name: RoutesName.signUpUploadProfile,
        pageBuilder: (context, state) => const MaterialPage(child: SignUpSetProfilePage()),
      ),
      GoRoute(
        path: '/set-idcard',
        name: RoutesName.signUpSetIdCard,
        pageBuilder: (context, state) => const MaterialPage(child: SignUpSetidcardPage()),
      ),
      GoRoute(
        path: '/sign-up-success',
        name: RoutesName.signUpSuccess,
        pageBuilder: (context, state) => const MaterialPage(child: SignUpSuccessPage()),
      ),

      // --- PERBAIKI HALAMAN TUJUAN ---
      GoRoute(path: '/top-up',
        name: RoutesName.topUp,
        pageBuilder: (context, state) => const MaterialPage(child: TopUpPage()), // Ganti ke TopUpPage()
      ),
      GoRoute(path: '/withdraw',
        name: RoutesName.withdraw,
        pageBuilder: (context, state) => const MaterialPage(child: Withdrawpage()), // Ganti ke WithdrawPage()
      ),
      GoRoute(path: '/more',
        name: RoutesName.more,
        pageBuilder: (context, state) => const MaterialPage(child: Morepage()), // Ganti ke MorePage()
      ),
      GoRoute(path: '/send',
        name: RoutesName.send,
        pageBuilder: (context, state) => const MaterialPage(child: Sendpage()), // Ganti ke SendPage()
      ),
    GoRoute(
      path: '/profile',
      name: RoutesName.profile,
      pageBuilder: (context, state) => const MaterialPage(child: Profilepage()),
    )
    ],

  );
}
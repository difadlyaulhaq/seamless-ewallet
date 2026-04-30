import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/models/operator_card_model.dart';
import 'package:seamless/models/topup_form_model.dart';
import 'package:seamless/models/transfer_form_model.dart';
import 'package:seamless/models/user_model.dart';
import 'package:seamless/ui/pages/data_package_page.dart';
import 'package:seamless/ui/pages/data_provider_page.dart';
import 'package:seamless/ui/pages/data_success_page.dart';
import 'package:seamless/ui/pages/home_page.dart';
import 'package:seamless/ui/pages/onboarding_page.dart';
import 'package:seamless/ui/pages/pin_page.dart';
import 'package:seamless/ui/pages/profile_edit_page.dart';
import 'package:seamless/ui/pages/profile_edit_pin_page.dart';
import 'package:seamless/ui/pages/profile_edit_success_page.dart';
import 'package:seamless/ui/pages/profile_page.dart';
import 'package:seamless/ui/pages/sign_in_page.dart';
import 'package:seamless/ui/pages/sign_up_page.dart';
import 'package:seamless/ui/pages/sign_up_success_page.dart';
import 'package:seamless/ui/pages/splash_page.dart';
import 'package:seamless/ui/pages/topup_amount_page.dart';
import 'package:seamless/ui/pages/topup_page.dart';
import 'package:seamless/ui/pages/topup_success_page.dart';
import 'package:seamless/ui/pages/transfer_amount_page.dart';
import 'package:seamless/ui/pages/transfer_page.dart';
import 'package:seamless/ui/pages/transfer_success_page.dart';

part 'router_name.dart';

GoRouter getRouter() {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: RoutesName.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/onboarding',
        name: RoutesName.onboarding,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: '/sign-in',
        name: RoutesName.signIn,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: '/sign-up',
        name: RoutesName.signUp,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: '/sign-up-success',
        name: RoutesName.signUpSuccess,
        builder: (context, state) => const SignUpSuccessPage(),
      ),
      GoRoute(
        path: '/home',
        name: RoutesName.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/profile',
        name: RoutesName.profile,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: '/pin',
        name: RoutesName.pin,
        builder: (context, state) => const PinPage(),
      ),
      GoRoute(
        path: '/profile-edit',
        name: RoutesName.profileEdit,
        builder: (context, state) {
          final user = state.extra as UserModel;
          return ProfileEditPage(user: user);
        },
      ),
      GoRoute(
        path: '/profile-edit-pin',
        name: RoutesName.profileEditPin,
        builder: (context, state) {
          final user = state.extra as UserModel;
          return ProfileEditPinPage(user: user);
        },
      ),
      GoRoute(
        path: '/profile-edit-success',
        name: RoutesName.profileEditSuccess,
        builder: (context, state) => const ProfileEditSuccessPage(),
      ),
      GoRoute(
        path: '/topup',
        name: RoutesName.topup,
        builder: (context, state) => const TopupPage(),
      ),
      GoRoute(
        path: '/topup-amount',
        name: RoutesName.topupAmount,
        builder: (context, state) {
          final data = state.extra as TopupFormModel;
          return TopupAmountPage(data: data);
        },
      ),
      GoRoute(
        path: '/topup-success',
        name: RoutesName.topupSuccess,
        builder: (context, state) => const TopupSuccessPage(),
      ),
      GoRoute(
        path: '/transfer',
        name: RoutesName.transfer,
        builder: (context, state) => const TransferPage(),
      ),
      GoRoute(
        path: '/transfer-amount',
        name: RoutesName.transferAmount,
        builder: (context, state) {
          final data = state.extra as TransferFormModel;
          return TransferAmountPage(data: data);
        },
      ),
      GoRoute(
        path: '/transfer-success',
        name: RoutesName.transferSuccess,
        builder: (context, state) => const TransferSuccessPage(),
      ),
      GoRoute(
        path: '/data-provider',
        name: RoutesName.dataProvider,
        builder: (context, state) => const DataProviderPage(),
      ),
      GoRoute(
        path: '/data-package',
        name: RoutesName.dataPackage,
        builder: (context, state) {
          final operator = state.extra as OperatorCardModel;
          return DataPackagePage(operator: operator);
        },
      ),
      GoRoute(
        path: '/data-success',
        name: RoutesName.dataSuccess,
        builder: (context, state) => const DataSuccessPage(),
      ),
    ],
  );
}

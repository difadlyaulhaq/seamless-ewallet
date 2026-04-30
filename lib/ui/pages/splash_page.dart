import 'package:go_router/go_router.dart';
import 'package:seamless/blocs/auth/auth_bloc.dart';
import 'package:seamless/route/router.dart';
import 'package:seamless/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleNavigation();
    });
  }

  void _handleNavigation() {
    final state = context.read<AuthBloc>().state;
    if (state is AuthSuccess) {
      context.goNamed(RoutesName.home);
    } else if (state is AuthFailed) {
      context.goNamed(RoutesName.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        _handleNavigation();
      },
      child: Scaffold(
        backgroundColor: darkBackgroundColor,
        body: Center(
          child: Container(
            width: 155,
            height: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/img_logo_dark.png',
              ),
            )),
          ),
        ),
      ),
    );
  }
}

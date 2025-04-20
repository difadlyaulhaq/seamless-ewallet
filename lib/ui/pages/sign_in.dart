import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin:  const EdgeInsets.only(top: 100),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/img_logo_seamless_light.png",
                  ),
                alignment: Alignment.center
              ),
            ),
          ),
          const SizedBox(height: 80),
          Text(
            "Sign in & \ngrow your finance",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      )
    );
  }
}
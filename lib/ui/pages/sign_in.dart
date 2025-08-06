import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/shared/theme.dart';
import 'package:seamless/ui/widgets/buttons.dart';
import 'package:seamless/ui/widgets/forms.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img_logo_seamless_light.png"),
                alignment: Alignment.center,
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
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                // Email Address
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    CustomFormField(
                      title: "Email Address",
                      controller: TextEditingController(),
                      onFieldSubmitted: (value) {
                        // Handle email submission
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
               CustomFormField(
                title: "password",
                obscureText: true,
               ), // Password
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?",
                    style: blueTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                      ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          CostumFilledButton(
            onPressed: () {
              context.go('/home'); // Ganti dengan route yang sesuai
            },
            title: "Sign In",
            width: 200,
            height: 50,
          ),
          const SizedBox(height: 15),
         CostumTextButton(
          title: "Create New Account", 
          onPressed: () {
           context.go('/sign-up'); // Ganti dengan route yang sesuai
         }
         )
        ],
      ),
    );
  }
}
 
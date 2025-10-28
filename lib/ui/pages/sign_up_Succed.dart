import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/shared/theme.dart';
import 'package:seamless/ui/widgets/buttons.dart';


class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 80),
          Text(
            "Registration Successful",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
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
               const SizedBox(height: 16),
                Text(
                  "your account has been created successfully. You can now log in to your account and start using our services.",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
              ],
            ),
          ),
         SizedBox(height: 30),
          CostumFilledButton(
            onPressed: () {
              context.go('/sign-in'); // Ganti dengan route yang sesuai
            },
            title: "Login Now",
            width: 200,
            height: 50,
          ),
           SizedBox(height: 30),
         TextButton(onPressed: () {
           context.go('/sign-up-success'); // Ganti dengan route yang sesuai
         },
         child: Text(
          "Skip for now",
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
         )
         )
        ],
      ),
    );
  }
}
 
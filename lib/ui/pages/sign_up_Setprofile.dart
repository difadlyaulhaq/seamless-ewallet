import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/shared/theme.dart';
import 'package:seamless/ui/widgets/buttons.dart';
import 'package:seamless/ui/widgets/forms.dart';

class SignUpSetProfilePage extends StatelessWidget {
  const SignUpSetProfilePage({super.key});

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
            "Verify your identity to \ncontinue",
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
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset("assets/ic_upload.png",
                      width: 32,
                    ),
                  ),
                ),
                //Id Card uploaded
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: const DecorationImage(
                //       fit: BoxFit.cover,
                //       image: AssetImage("assets/img_profile.png"),
                //     ),
                //   ),

                // ),
                const SizedBox(height: 16),
                Text(
                  "Upload your id card",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                CustomFormField(
                  title: "Set PIN (6 digit)",
                  obscureText: true,
                  controller: TextEditingController(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
         CostumTextButton(
          title: "Already have an account?", 
          onPressed: () {
           context.go('/login'); // Ganti dengan route yang sesuai
         }
         ),
            
        ],
      ),
    );
  }
}
 
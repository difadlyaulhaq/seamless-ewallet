import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/shared/theme.dart';

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
                    Text(
                      "Email Address",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Password
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      obscureText: isObscure,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
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
            SizedBox(      
              width: 150,
              height: 50,
              child: TextButton(
                onPressed: () {
                    
              }, 
              style: TextButton.styleFrom(
              backgroundColor: purpleColor,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(56),            
              ),
          ),  
            child: Text(
              "Sign In",
            style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),    
            ),
          ),
          const SizedBox(height: 15),
         TextButton(
            onPressed: () {
              context.go('/sign-up'); // Ganti dengan route yang sesuai
            },
            child: Text(
              "Don't have an account?",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
 
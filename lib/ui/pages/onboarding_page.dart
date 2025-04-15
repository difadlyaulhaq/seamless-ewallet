import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  "assets/image_onboarding_1.png",
                )
              ], 
              options: CarouselOptions(

              )
            )
          ],
        ),
      ),
    );
  }
}
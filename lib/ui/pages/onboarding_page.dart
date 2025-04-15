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
                  height: 300,
                ),
                Image.asset(
                  "assets/image_onboarding_2.png",
                  height: 300,
                ),
                Image.asset(
                  "assets/image_onboarding_3.png",
                  height: 300,
                ),
              ], 
              options: CarouselOptions(
                height: 300,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
              
              )
            ),
            const SizedBox(height: 80,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 22),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                  "Grow your financial Today", 
                 style: blackTextStyle.copyWith(
                 fontSize: 20, 
                 fontWeight: semiBold
                 ),
                ),
                const SizedBox(height: 26),
                Text(
                  "We provide a full service to you to help you grow your business and increase your income", 
                  style: greyTextStyle.copyWith(
                    fontSize: 16, 
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
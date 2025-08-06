import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/shared/theme.dart';
import 'package:seamless/ui/widgets/buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselSliderController carouselController = CarouselSliderController();
  List <String> titles = [
    "Grow your financial Today",
    "Build from zero to financial freedom",
    "start grow Together",
  ];
  List <String> subtitles = [
    "Our mission is to help you grow your business and increase your income",
    "we provide guidance and support to help you achieve your financial goals",
    "We will help you to grow your business and increase your income",
  ];
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
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
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
                  titles[currentIndex], 
                 style: blackTextStyle.copyWith(
                 fontSize: 20, 
                 fontWeight: semiBold
                 ),
                ),
                const SizedBox(height: 26),
                Text(
                  subtitles[currentIndex], 
                  style: blackTextStyle.copyWith(
                    fontSize: 16, 
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.center,
                ),
                currentIndex == 2 ?
                Column(
                  children: [
                    SizedBox(height: 30),
                    CostumFilledButton(
                      onPressed: () {
                        context.go('/sign-up'); // Ganti dengan route yang sesuai
                      }, 
                      title: "Get Started",
                      width: 150,
                      height: 50,
                    ),
                  const SizedBox(height: 30),
                  SizedBox(
                    
                    width: 150,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        context.go('/login'); // Ganti dengan route yang sesuai
                      }, 
                      style: TextButton.styleFrom(
                        backgroundColor: lightBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(56),
                        
                        ),
                      ),
                      child: Text(
                        "Sign In",
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                    ),    
                  ),
                  )
                  ],
                ):
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? purpleColor : lightBackgroundColor,
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? purpleColor : lightBackgroundColor,
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? purpleColor : lightBackgroundColor,
                      ),
                    ),
                    const Spacer(),
                  CostumFilledButton(
                    title: "Continue",
                    width: 150,
                    height: 50,
                    onPressed: () {
                      carouselController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                  )
                ],
              ) 
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
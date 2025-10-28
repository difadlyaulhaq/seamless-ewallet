import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:seamless/shared/theme.dart'; 

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final bool hasNotch;  
  final StylishBarFabLocation fabLocation;  

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.hasNotch = false, 
    this.fabLocation = StylishBarFabLocation.end, 
  });

  @override
  Widget build(BuildContext context) {
    final selectedStyle = blueTextStyle.copyWith(
      fontSize: 10,
      fontWeight: medium,
    );
    final unselectedStyle = blackTextStyle.copyWith(
      fontSize: 10,
      fontWeight: medium,
    );

    return StylishBottomBar(
      items: [
        BottomBarItem(
          icon: Image.asset('assets/ic_overview.png', width: 20),
          selectedColor: blueColor,
          unSelectedColor: blackColor,
          title: Text('Overview', style: currentIndex == 0 ? selectedStyle : unselectedStyle),
        ),
        BottomBarItem(
          icon: Image.asset('assets/ic_history.png', width: 20),
          selectedColor: blueColor,
          unSelectedColor: blackColor,
          title: Text('History', style: currentIndex == 1 ? selectedStyle : unselectedStyle),
        ), 
         BottomBarItem(
           icon: Image.asset('assets/ic_statistic.png', width: 20),
           selectedColor: blueColor,
           unSelectedColor: blackColor,
           title: Text('Statistic', style: currentIndex == 2 ? selectedStyle : unselectedStyle),
         ),
        BottomBarItem(
          icon: Image.asset('assets/ic_reward.png', width: 20),
          selectedColor: blueColor,
          unSelectedColor: blackColor,
          title: Text('Reward', style: currentIndex == 3 ? selectedStyle : unselectedStyle),
        ),
      ],
      option: AnimatedBarOptions( // Atau BubbleBarOptions/DotBarOptions
        // Anda bisa memilih style ikon yang berbeda jika mau
         iconStyle: IconStyle.Default, // Atau IconStyle.simple jika tanpa title
      ),
      hasNotch: hasNotch, // Gunakan parameter
      fabLocation: fabLocation, // Gunakan parameter
      currentIndex: currentIndex,
      onTap: (index) {
        // Jika Anda menambahkan item kosong sebagai placeholder,
        // pastikan untuk tidak melakukan navigasi saat placeholder di-tap
        // if (index == 2) return; // Sesuaikan index placeholder jika perlu
        onTap(index);
      },
      backgroundColor: lightBackgroundColor,
      notchStyle: NotchStyle.circle, // Atau NotchStyle.square
    );
  }
}
import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';
import 'package:seamless/ui/widgets/home_widget/buildfriedlytipsitem.dart';
import 'package:seamless/ui/widgets/home_widget/buildlevel.dart';
import 'package:seamless/ui/widgets/home_widget/buildprofile.dart';
import 'package:seamless/ui/widgets/home_widget/buildsendagain.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../widgets/home_widget/buildwalletcard.dart';
import '../widgets/home_widget/custom_bottom_bar.dart' show CustomBottomBar;
import '../widgets/home_widget/buildServices.dart';
import '../widgets/home_widget/latestTransaction.dart';
 

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // _pageController.jumpToPage(index);
  }

  void _onFabTapped() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: lightBackgroundColor,

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            buildProfile(context),
            buildwalletCard(),
            buildLevel(),
            buildServices(context),
            latestTransaction(),
            buildsendagain(),
            buildfriedlytips()
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onFabTapped,
        backgroundColor: purpleColor,
        shape: const CircleBorder(),
        child: Image.asset('assets/ic_plus_circle.png', width: 24),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: CustomBottomBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
      ),
    );
  }
  Widget buildfriedlytips() {
  return Container(
    margin: const EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30), 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 12), 
          child: Text(
            'Friendly Tips', 
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold, 
            ),
          ),
        ),
        Wrap (
          spacing: 20,  
          runSpacing: 20,
          children: const [
            Buildfriedlytipsitem(
              imageUrl: 'assets/img_tips1.png',
              title: 'Save more with these simple tips',
              url: 'https://www.example.com/tips1',
            ),
            Buildfriedlytipsitem(
              imageUrl: 'assets/img_tips2.png',
              title: 'Save more with these simple tips',
              url: 'https://www.example.com/tips2',
            ),
            Buildfriedlytipsitem(
              imageUrl  : 'assets/img_tips3.png',
              title: 'Save more with these simple tips',
              url: 'https://www.example.com/tips3',
            ),
            Buildfriedlytipsitem(
              imageUrl: 'assets/img_tips4.png',
              title: 'Save more with these simple tips',
              url: 'https://www.example.com/tips4',
            ),
             
          ],
        )
      ],
    ),
  );
}
}

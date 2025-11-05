import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';
import 'package:seamless/ui/widgets/home_widget/profile_menu_item.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'My Profile',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
        backgroundColor:  lightBackgroundColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
           Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(0, 5),

                ),
              ],
            ),
            child: Column(
              children: [
        Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img_profile.png'),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width:  24,
                  height:  24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgroundColor,
                      border: Border.all(
                        color: whiteColor,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 24,
                    ),
                  ),
                ),
            ),
            ),
            const SizedBox(height: 16),
            Text(
              'Shayna Anne',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            profileMenuItem(title: 'Edit profile', icon: Icons.person_rounded, onTap: () {}),
            profileMenuItem(title: 'My pin', icon: Icons.shield_rounded, onTap: () {}),
            profileMenuItem(title: 'Wallet setting', icon: Icons.wallet_rounded, onTap: () {}),
            profileMenuItem(title: 'My reward', icon: Icons.card_giftcard_rounded, onTap: () {}),
            profileMenuItem(title: 'Help center', icon: Icons.help_rounded, onTap: () {}),
            profileMenuItem(title: 'Log out', icon: Icons.logout_rounded, onTap: () {}),
            ],
        ),
      ),
      const SizedBox(height: 30),
      TextButton(
        onPressed: () {},
        child: Text(
          'Report a Problem',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      )
      ],
      ),
    );
  }
} 
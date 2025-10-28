import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class HomeUserItem extends StatelessWidget {
  final String username;
  final String userIIconUrl;
  const HomeUserItem({super.key, required this.username, required this.userIIconUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: Image.asset(userIIconUrl).image, width: 65),
          const SizedBox(width: 12,height: 15,),
          Text(
            username,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
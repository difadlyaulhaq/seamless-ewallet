import 'package:flutter/material.dart';
import 'package:seamless/ui/widgets/home_widget/home_user_item.dart';
import '../../../shared/theme.dart';
Widget buildsendagain() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HomeUserItem(username: '@difa', userIIconUrl: 'assets/img_friend1.png'),
                 SizedBox(width: 20),
                HomeUserItem(username: '@john', userIIconUrl: 'assets/img_friend2.png'),
                SizedBox(width: 20),
                HomeUserItem(username: '@jane', userIIconUrl: 'assets/img_friend3.png'),
                SizedBox(width: 20),
                HomeUserItem(username: '@mike', userIIconUrl: 'assets/img_friend2.png'),
                SizedBox(width: 20),
                HomeUserItem(username: '@lisa', userIIconUrl: 'assets/img_friend3.png'),
                SizedBox(width: 20),
                HomeUserItem(username: '@egi', userIIconUrl: 'assets/img_friend1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
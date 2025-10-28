import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';

Widget buildwalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img_bg_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '\$5,194,482.00',
            style: whiteTextStyle.copyWith(
              fontSize: 26,
              fontWeight: semiBold,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '****  ****  ****  3947',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                      letterSpacing: 3,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Shayna Anne',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
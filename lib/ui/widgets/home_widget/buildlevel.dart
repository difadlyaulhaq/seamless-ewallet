import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';

Widget buildLevel() {
    return Container(
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                '55% of 10,000,000',
                style: greenTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation<Color>(greenColor),
              backgroundColor: lightBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
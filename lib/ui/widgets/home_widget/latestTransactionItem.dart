import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';
class LatesttransactionItem extends StatelessWidget {
  final String iconUrl;
  final String title;
   final String date;
   final String amount;
  const LatesttransactionItem({super.key, required this.iconUrl, required this.title, required this.date, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Image(image: Image.asset( iconUrl).image, width: 65),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  date,
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ],
        ),
    );
  }
}
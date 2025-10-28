import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class Homeserviceitem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;
  const Homeserviceitem({super.key, required this.iconUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: whiteColor,
              ),
              child: Center(
                child: Image.asset(
                  iconUrl,
                  width: 26,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
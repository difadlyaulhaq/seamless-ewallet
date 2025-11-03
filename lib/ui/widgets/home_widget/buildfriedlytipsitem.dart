import 'package:flutter/material.dart';
import '../../../shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Buildfriedlytipsitem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const Buildfriedlytipsitem({super.key, required this.imageUrl, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse  (url))) {
          launchUrl(Uri.parse(url));
        }
      },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),
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
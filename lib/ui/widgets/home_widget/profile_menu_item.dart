import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';

Widget profileMenuItem({
  required String title,
  required IconData icon,
  VoidCallback? onTap,
}) {
  return ListTile(
    leading: Icon(
      icon,
      size: 24,
      color: blackColor,
    ),
    title: Text(
      title,
      style: blackTextStyle.copyWith(
        fontSize: 16,
        fontWeight: medium,
      ),
    ),
    onTap: onTap,
  );
}
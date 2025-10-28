import 'package:flutter/material.dart';
import 'package:seamless/shared/theme.dart';  

class Morepage extends StatelessWidget {
  const Morepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: blackColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text(
          'This is the More Page',
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
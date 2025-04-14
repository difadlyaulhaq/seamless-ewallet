import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splashscreenpage extends StatefulWidget {
  const Splashscreenpage({super.key});

  @override
  State<Splashscreenpage> createState() => _SplashscreenpageState();
}

class _SplashscreenpageState extends State<Splashscreenpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.go('/login'); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(102, 42, 178, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

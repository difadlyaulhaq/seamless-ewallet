import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Login', 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
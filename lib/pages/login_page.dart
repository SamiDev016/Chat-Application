import 'package:chat_app/components/my_textField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            //welcome back message
            const SizedBox(
              height: 50,
            ),
            Text(
              "Welcom Back!",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 25,
            ),
            //email textField
            const MyTextField(
              title: "Email",
            ),
            //pw textField
            const SizedBox(
              height: 15,
            ),
            const MyTextField(
              title: "Password",
            ),

            //login button

            //register now
          ],
        ),
      ),
    );
  }
}

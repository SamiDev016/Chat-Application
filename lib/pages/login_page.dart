import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login() {}

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
            MyTextField(
                title: "Email",
                isPassword: false,
                controller: _emailController),
            //pw textField
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              title: "Password",
              isPassword: true,
              controller: _passwordController,
            ),

            //login button
            const SizedBox(
              height: 25,
            ),

            MyButton(
              text: "Login",
              onTap: login,
            ),

            //register now
            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                    child: Text(
                  "Register Now!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

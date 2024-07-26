import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/my_button.dart';
import '../components/my_textField.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final void Function()? onTap;

  void register() {}
  RegisterPage({super.key, required this.onTap});

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
              "Create New Account",
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
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              title: "Confirm Password",
              isPassword: true,
              controller: _confirmPasswordController,
            ),

            //login button
            const SizedBox(
              height: 25,
            ),

            MyButton(
              text: "Register",
              onTap: register,
            ),

            //register now
            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You Have An Account? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                    child: Text(
                  "Login Now!",
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

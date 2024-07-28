import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final bool isPassword;
  final TextEditingController controller;
  final FocusNode? focusNode;
  const MyTextField({super.key,required this.title,required this.isPassword,required this.controller, required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        obscureText: isPassword,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: title,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
          
        ),
      ),
    );
  }
}
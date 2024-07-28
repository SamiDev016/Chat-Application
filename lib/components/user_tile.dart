import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.text, required this.onTap});

  final String text;
  final void Function()? onTap;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15)
        ),
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
        child: Row(
          children: [
            //icon
            Icon(Icons.person),

            //userName
            Text(text)
          ],
        ),
      ),
    );
  }
}
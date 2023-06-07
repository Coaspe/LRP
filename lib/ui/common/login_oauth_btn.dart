import 'package:flutter/material.dart';

class LoginOauthBtn extends StatelessWidget {
  const LoginOauthBtn(
      {super.key,
      required this.text,
      required this.imageUri,
      required this.color});
  final String text;
  final String imageUri;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Row(
        children: [
          Image.asset(
            imageUri,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(text)
        ],
      ),
    ));
  }
}

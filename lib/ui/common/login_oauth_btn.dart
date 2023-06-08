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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: color, boxShadow: []),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                imageUri,
                width: 24,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              'Login with $text',
              style: const TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    ));
  }
}

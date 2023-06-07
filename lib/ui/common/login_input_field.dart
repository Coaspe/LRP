import 'package:flutter/material.dart';
import 'package:lrp/styles/colors.dart';

class LoginIDInputField extends StatefulWidget {
  const LoginIDInputField(
      {super.key, required this.controller, required this.placeholder});
  final TextEditingController controller;
  final String placeholder;
  static LRPColors lrpColors = LRPColors();

  @override
  State<LoginIDInputField> createState() => _LoginIDInputFieldState();
}

class _LoginIDInputFieldState extends State<LoginIDInputField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(30.0),
      child: SizedBox(
        width: 280,
        height: 50,
        child: TextFormField(
          controller: widget.controller,
          style: const TextStyle(fontSize: 12),
          decoration: InputDecoration(
            hintText: widget.placeholder,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(30.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(30.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              // borderSide: BorderSide(color: lrpColors.logoBlue),
              borderRadius: BorderRadius.circular(30.0),
            ),
            contentPadding: const EdgeInsets.all(10),
            prefixIcon: Icon(
              Icons.person_2_outlined,
              color: LoginIDInputField.lrpColors.greyMedium,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPasswordInputField extends StatefulWidget {
  const LoginPasswordInputField(
      {super.key, required this.controller, required this.placeholder});
  final TextEditingController controller;
  final String placeholder;
  static LRPColors lrpColors = LRPColors();

  @override
  State<LoginPasswordInputField> createState() =>
      _LoginPasswordInputFieldState();
}

class _LoginPasswordInputFieldState extends State<LoginPasswordInputField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(30.0),
      child: SizedBox(
        width: 280,
        height: 50,
        child: TextFormField(
          controller: widget.controller,
          style: const TextStyle(fontSize: 12),
          decoration: InputDecoration(
            hintText: widget.placeholder,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(30.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(30.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              // borderSide: BorderSide(color: lrpColors.logoBlue),
              borderRadius: BorderRadius.circular(30.0),
            ),
            contentPadding: const EdgeInsets.all(10),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: LoginPasswordInputField.lrpColors.greyMedium,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}

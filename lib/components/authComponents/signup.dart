import 'package:flutter/material.dart';

import '../textFields/primary_text_field.dart';

class SignUpComponent extends StatefulWidget {
  const SignUpComponent({
    super.key,
    required this.emailTextEditingController,
    required this.passwordTextEditingController,
    required this.confirmPasswordTextEditingController,
  });

  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;
  final TextEditingController confirmPasswordTextEditingController;

  @override
  State<SignUpComponent> createState() => _SignUpComponentState();
}

class _SignUpComponentState extends State<SignUpComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryTextField(
          context: context,
          labelText: 'Email',
          textEditingController: widget.emailTextEditingController,
          keyboardType: TextInputType.emailAddress,
        ),
        PrimaryTextField(
          context: context,
          labelText: 'Password',
          textEditingController: widget.passwordTextEditingController,
          isPassword: true,
        ),
        PrimaryTextField(
          context: context,
          labelText: 'Confirm Password',
          textEditingController: widget.confirmPasswordTextEditingController,
          isPassword: true,
        )
      ],
    );
  }
}

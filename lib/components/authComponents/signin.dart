import 'package:flutter/material.dart';

import '../textFields/primary_text_field.dart';

class SignInComponent extends StatefulWidget {
  const SignInComponent({
    super.key,
    required this.emailTextEditingController,
    required this.passwordTextEditingController,
  });

  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;
  @override
  State<SignInComponent> createState() => _SignInComponentState();
}

class _SignInComponentState extends State<SignInComponent> {
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
        )
      ],
    );
  }
}

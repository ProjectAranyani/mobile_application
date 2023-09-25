import 'package:flutter/material.dart';

class PrimaryTextField extends StatefulWidget {
  const PrimaryTextField(
      {super.key,
      required this.context,
      this.icon,
      this.isPassword = false,
      this.keyboardType = TextInputType.text,
      required this.labelText,
      required this.textEditingController});

  final TextEditingController textEditingController;
  final BuildContext context;
  final String labelText;
  final IconData? icon;
  final bool isPassword;
  final TextInputType keyboardType;
  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        controller: widget.textEditingController,
        obscureText: widget.isPassword,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          prefixIcon: widget.icon == null ? null : Icon(widget.icon),
          labelText: widget.labelText,
          // labelStyle: const TextStyle(
          //   fontFamily: "Quicksand",
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ),
    );
  }
}

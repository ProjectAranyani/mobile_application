import 'package:flutter/material.dart';

class BoxBorderButton extends StatefulWidget {
  const BoxBorderButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
  });

  final String title;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  State<BoxBorderButton> createState() => _BoxBorderButtonState();
}

class _BoxBorderButtonState extends State<BoxBorderButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        child: TextButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(15),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            ),
          ),
          child: SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.35,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.icon != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        widget.icon,
                        key: const ValueKey(0),
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  Text(
                    widget.title,
                    key: const ValueKey(1),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontFamily: "Quicksand"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

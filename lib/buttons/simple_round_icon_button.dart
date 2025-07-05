import 'package:flutter/material.dart';

class SimpleRoundIconButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Icon icon;
  final Color? iconColor;
  final Alignment iconAlignment;
  final Function? onPressed;

  SimpleRoundIconButton({
    this.backgroundColor = Colors.redAccent,
    this.buttonText = const Text("REQUIRED TEXT"),
    this.icon = const Icon(Icons.email),
    this.iconColor,
    this.iconAlignment = Alignment.centerLeft,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left-aligned icon
          if (iconAlignment == Alignment.centerLeft)
            IconButton(
              icon: Icon(
                icon.icon,
                color: iconColor ?? backgroundColor,
              ),
              onPressed: onPressed as void Function()?,
            ),

          // Button Text
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: buttonText,
          ),

          // Right-aligned icon
          if (iconAlignment == Alignment.centerRight)
            IconButton(
              icon: Icon(
                icon.icon,
                color: iconColor ?? backgroundColor,
              ),
              onPressed: onPressed as void Function()?,
            ),
        ],
      ),
    );
  }
}

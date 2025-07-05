import 'package:flutter/material.dart';

class SimpleRoundOnlyIconButton extends StatelessWidget {
  final Color backgroundColor;
  final Icon? icon;
  final Color? iconColor;
  final Alignment iconAlignment;
  final Function? onPressed;

  SimpleRoundOnlyIconButton({
    this.backgroundColor = Colors.redAccent,
    this.icon,
    this.iconColor,
    this.iconAlignment = Alignment.center,
    this.onPressed,
  });

  MainAxisAlignment getMainAxisAlignment() {
    if (this.iconAlignment == Alignment.center) {
      return MainAxisAlignment.center;
    } else if (this.iconAlignment == Alignment.centerLeft) {
      return MainAxisAlignment.start;
    } else if (this.iconAlignment == Alignment.centerRight) {
      return MainAxisAlignment.end;
    }
    return MainAxisAlignment.center;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              overlayColor: MaterialStateProperty.all(backgroundColor),
              backgroundColor: MaterialStateProperty.all(backgroundColor),
            ),
            onPressed: onPressed as void Function()?,
            child: Row(
              mainAxisAlignment: getMainAxisAlignment(),
              children: <Widget>[
                // Icon with alignment handling
                if (icon != null)
                  IconButton(
                    icon: Icon(
                      icon!.icon,
                      color: iconColor ?? Colors.white,
                    ),
                    onPressed: onPressed as void Function()?,
                  ),
                // Expand to push the icon to the right if required
                if (iconAlignment == Alignment.centerLeft || iconAlignment == Alignment.centerRight)
                  Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

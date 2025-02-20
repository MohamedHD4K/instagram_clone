import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.outline = false,
      this.borderColor = Colors.white,
      this.borderWidth = 1,
      this.borderRadios = 5,
      this.horizotalPadding = 100,
      this.verticalPadding = 12
      })
      : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final bool outline;
  final double borderWidth;
  final Color borderColor;
  final double borderRadios;
  final double horizotalPadding;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return outline
        ? OutlinedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: horizotalPadding, vertical: verticalPadding),
              side: BorderSide(color: borderColor, width: borderWidth),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadios),
              ),
            ),
            child: child
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[600],
              padding: EdgeInsets.symmetric(horizontal: horizotalPadding, vertical: verticalPadding),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadios),
              ),
            ),
            child: child
          );
  }
}

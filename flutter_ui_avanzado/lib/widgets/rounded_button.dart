import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_avanzado/utils/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? backgroundColor;
  const RoundedButton(
      {super.key,
      required this.onPressed,
      required this.label,
      this.backgroundColor})
      : assert(label != null);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        child: Text(
          this.label,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'sans',
            letterSpacing: 2,
            fontSize: 18,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}

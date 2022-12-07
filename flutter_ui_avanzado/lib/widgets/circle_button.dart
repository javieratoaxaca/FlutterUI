import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_avanzado/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButton extends StatelessWidget {
  final String iconPath;
  final double size;
  final Color? backgroundColor;
  const CircleButton(
      {super.key, this.size = 50, this.backgroundColor, required this.iconPath})
      : assert(iconPath != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      padding: EdgeInsets.all(3),
      child: SvgPicture.asset(
        iconPath,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: this.backgroundColor ?? AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}

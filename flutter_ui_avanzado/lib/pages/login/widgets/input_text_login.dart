import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputTextLogin extends StatelessWidget {
  final String iconPath, placeholder;
  const InputTextLogin(
      {super.key, required this.iconPath, required this.placeholder})
      : assert(iconPath != null && placeholder != null);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      prefix: Container(
        width: 40,
        height: 30,
        padding: EdgeInsets.all(2),
        child: SvgPicture.asset(
          this.iconPath,
          color: Color(0xffcccccc),
        ),
      ),
      placeholder: this.placeholder,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xffdddddd),
          ),
        ),
      ),
    );
  }
}

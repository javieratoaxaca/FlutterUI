import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/input_text_login.dart';
import 'package:flutter_ui_avanzado/widgets/rounded_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /* CupertinoTextField(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefix: Container(
                width: 40,
                height: 30,
                child: SvgPicture.asset(
                  'assets/pages/login/icons/email.svg',
                  color: Color(0xffcccccc),
                ),
              ),
              placeholder: "Email Address",
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xffdddddd),
                  ),
                ),
              ),
            ),*/
            InputTextLogin(
                iconPath: 'assets/pages/login/icons/email.svg',
                placeholder: "Email Address"),
            SizedBox(
              height: 15,
            ),
            InputTextLogin(
                iconPath: 'assets/pages/login/icons/key.svg',
                placeholder: "Password"),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: CupertinoButton(
                padding: EdgeInsets.symmetric(vertical: 13),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontFamily: 'sans'),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RoundedButton(
              label: "Sing In",
              onPressed: () {},
            ),
            SizedBox(
              height: 150,
            )
          ],
        ));
  }
}

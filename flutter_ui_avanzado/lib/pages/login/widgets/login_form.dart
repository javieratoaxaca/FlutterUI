import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/input_text_login.dart';
import 'package:flutter_ui_avanzado/utils/app_colors.dart';
import 'package:flutter_ui_avanzado/utils/responsive.dart';
import 'package:flutter_ui_avanzado/widgets/circle_button.dart';
import 'package:flutter_ui_avanzado/widgets/rounded_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SafeArea(
      top: false,
      child: Container(
          //color: Colors.red,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
                height: responsive.ip(2),
              ),
              InputTextLogin(
                  iconPath: 'assets/pages/login/icons/key.svg',
                  placeholder: "Password"),
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
                height: responsive.ip(2.7),
              ),
              RoundedButton(
                label: "Sing In",
                onPressed: () {},
                //backgroundColor: AppColors.primaryColor, // Colors.red, //
              ),
              SizedBox(
                height: responsive.ip(3.2),
              ),
              Text(
                'Or continue with',
                style: TextStyle(fontFamily: 'sans', fontSize: 12),
              ),
              SizedBox(
                height: responsive.ip(1.7),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButton(
                    size: 45,
                    backgroundColor: Color(0xff448AFF),
                    iconPath: 'assets/pages/login/icons/Facebook.svg',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleButton(
                    size: 45,
                    backgroundColor: Color(0xffFF1744),
                    iconPath: 'assets/pages/login/icons/google_plus.svg',
                  ),
                ],
              ),
              SizedBox(
                height: responsive.ip(2.7),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an account? ",
                    style: TextStyle(fontFamily: 'sans', fontSize: 12),
                  ),
                  CupertinoButton(
                    child: Text(
                      'Sing Up',
                      style: TextStyle(
                        fontFamily: 'sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

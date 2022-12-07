import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/login_form.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Welcome(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

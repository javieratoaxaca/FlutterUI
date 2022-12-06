import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 10,
      child: LayoutBuilder(builder: (_, context) {
        return Container(
          //color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                top: context.maxHeight * 0.6,
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      width: context.maxWidth,
                      color: Color(0xffeeeeee),
                    ),
                    Text("Welcome Back!")
                  ],
                ),
              ),
              Positioned(
                top: context.maxHeight * 0.274,
                child: SvgPicture.asset(
                  'assets/pages/login/woman.svg',
                  width: context.maxWidth * .245,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  'assets/pages/login/clouds.svg',
                  height: context.maxHeight * .50,
                  width: context.maxWidth,
                ),
              ),
              Positioned(
                top: context.maxHeight * 0.245,
                right: 5,
                child: SvgPicture.asset(
                  'assets/pages/login/men.svg',
                  width: context.maxWidth * .18,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

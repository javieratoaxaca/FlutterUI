import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart' show required;
import 'dart:math';

class Responsive {
  final double width, height, inch;

  Responsive({
    required this.height,
    required this.width,
    required this.inch,
  });

//Funcion para recuperar  la diagonal de la pantalla a utilizar
  factory Responsive.of(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final size = data.size;
    final inch = sqrt(pow(size.width, 2) + pow(size.height, 2));
    return Responsive(width: size.width, height: size.height, inch: inch);
  }

  double wp(double percent) {
    return this.width * percent / 100;
  }

  double hp(double percent) {
    return this.height * percent / 100;
  }

  double ip(double percent) {
    return this.inch * percent / 100;
  }
}

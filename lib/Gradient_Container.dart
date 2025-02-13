import 'package:flutter/material.dart';
import 'rolldice.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(Context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAligment, end: endAligment),
      ),
      child: Center(
        child: Rolldice(),
      ),
    );
  }
}

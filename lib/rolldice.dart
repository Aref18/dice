import 'package:flutter/material.dart';
import 'dart:math';

class Rolldice extends StatefulWidget {
  const Rolldice({super.key});

  @override
  State<Rolldice> createState() => _RolldiceState();
}

class _RolldiceState extends State<Rolldice> {
  var activedice = 2;

  void rolldicee() {
    setState(() {
      activedice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice$activedice.png',
          width: 200,
          color: Colors.white,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldicee,
          child: Text(
            "press me",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          style: TextButton.styleFrom(foregroundColor: Colors.white),
        )
      ],
    );
  }
}

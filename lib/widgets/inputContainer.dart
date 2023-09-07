import 'dart:ffi';

import 'package:bluetooth_tictactoe/constants/Colors.dart';
import 'package:bluetooth_tictactoe/widgets/Xmark.dart';
import 'package:bluetooth_tictactoe/widgets/circleMark.dart';
import 'package:flutter/material.dart';

class InputBoxWithDecor extends StatefulWidget {
  final int id;
  final String mark;
  const InputBoxWithDecor(
      {required int this.id, required String this.mark, super.key});

  @override
  State<InputBoxWithDecor> createState() => _InputBoxWithDecorState();
}

class _InputBoxWithDecorState extends State<InputBoxWithDecor> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
            color: secondColor, borderRadius: BorderRadius.circular(15)),
        child: MarkTheBoxwith(widget.mark));
  }

  MarkTheBoxwith(String mark) {
    if (mark == "null") return null;
    if (mark == "x") return XMark();
    if (mark == "o") return CircleMark();
  }
}

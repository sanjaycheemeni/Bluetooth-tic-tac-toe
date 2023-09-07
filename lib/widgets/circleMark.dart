import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleMark extends StatelessWidget {
  const CircleMark({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'icons/circle.svg',
      color: const Color.fromARGB(255, 255, 104, 104),
      width: 1,
      height: 10,
    );
  }
}

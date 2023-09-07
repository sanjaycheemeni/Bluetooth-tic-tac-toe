import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class XMark extends StatelessWidget {
  const XMark({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'icons/x.svg',
      color: const Color.fromARGB(255, 136, 191, 255),
      width: 1,
      height: 10,
    );
  }
}

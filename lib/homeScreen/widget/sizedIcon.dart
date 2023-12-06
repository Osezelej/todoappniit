import 'package:flutter/material.dart';

class SizedIcon extends StatelessWidget {
  final Widget icon;
  final double width;
  const SizedIcon({super.key, required this.icon, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: icon,
    );
  }
}

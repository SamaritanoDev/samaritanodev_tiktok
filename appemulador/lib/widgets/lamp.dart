import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  const Lamp({Key? key, required this.size, this.color}) : super(key: key);
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _CustomClipper(),
      child: Container(
        height: size * 2,
        width: size,
        color: color ?? Colors.white,
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    return Path()
      ..moveTo(width * 0.475, 0)
      ..lineTo(width * 0.475, height * 0.7)
      ..quadraticBezierTo(width * 0.15, height * 0.7, 0, height * 0.9)
      ..lineTo(width * 0.2, height * 0.9)
      ..quadraticBezierTo(width * 0.5, height, width * 0.8, height * 0.9)
      ..lineTo(width, height * 0.9)
      ..quadraticBezierTo(
          width * 0.85, height * 0.7, width * 0.525, height * 0.7)
      ..lineTo(width * 0.525, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _LoginPainter(),
      ),
    );
  }
}

class _LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(165.0, 150.0), radius: 180);
    const Gradient gradiente = LinearGradient(begin: Alignment.topCenter,
        //end: Alignment.bottomCenter,
        colors: <Color>[Color(0xff5157CB), Color(0xff676CDB)]);
    final paint = Paint()..shader = gradiente.createShader(rect);

    paint.color = const Color(0xffCD60DA);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(0, size.height * 0.55);
    path.quadraticBezierTo(size.width * 0.16, size.height * 0.43,
        size.width * 0.5, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.98, size.height * 0.47, size.width, size.height * 0.38);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}

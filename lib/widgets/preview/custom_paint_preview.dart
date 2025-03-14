import 'package:flutter/material.dart';

class CustomPaintPreview extends StatelessWidget {
  const CustomPaintPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.white,
        child: CustomPaint(
          painter: CirclePainter(),
          child: const Center(
            child: Text(
              'Custom Paint',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2.5, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

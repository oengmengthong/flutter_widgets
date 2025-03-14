const String customPaintCode = '''
class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2), 
      size.width / 2.5, 
      paint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// Usage:
CustomPaint(
  painter: CirclePainter(),
  child: Center(
    child: Text(
      'Custom Paint',
      style: TextStyle(color: Colors.white),
    ),
  ),
)
''';

const String rotatedBoxCode = '''
// RotatedBox rotates in 90-degree increments
int _quarterTurns = 1; // 1 = 90 degrees clockwise

RotatedBox(
  quarterTurns: _quarterTurns,
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    child: Center(
      child: Text(
        'Rotated Text',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)

// Common values:
// 0: No rotation
// 1: 90° clockwise
// 2: 180° (upside down)
// 3: 90° counter-clockwise
// 4: Back to original
''';

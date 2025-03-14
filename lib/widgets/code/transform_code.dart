const String transformCode = '''
// Rotation transform
Transform.rotate(
  angle: math.pi / 4, // 45 degrees in radians
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    child: Center(child: Text('Rotate', style: TextStyle(color: Colors.white))),
  ),
)

// Scale transform
Transform.scale(
  scale: 1.5, // Scale by 150%
  child: Container(
    width: 100,
    height: 100,
    color: Colors.green,
    child: Center(child: Text('Scale', style: TextStyle(color: Colors.white))),
  ),
)

// Translation transform
Transform.translate(
  offset: Offset(20, 20), // Move 20 pixels right and down
  child: Container(
    width: 100,
    height: 100,
    color: Colors.orange,
    child: Center(child: Text('Translate', style: TextStyle(color: Colors.white))),
  ),
)

// Custom transform with Matrix4
Transform(
  transform: Matrix4.skewX(0.3), // Skew along X axis
  alignment: Alignment.center,
  child: Container(
    width: 100,
    height: 100,
    color: Colors.purple,
    child: Center(child: Text('Skew', style: TextStyle(color: Colors.white))),
  ),
)
''';

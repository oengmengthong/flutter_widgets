const String inkWellCode = '''
// Basic InkWell with splash effect
InkWell(
  onTap: () {
    print('Tapped');
  },
  splashColor: Colors.blue.withOpacity(0.5),
  highlightColor: Colors.lightBlue.withOpacity(0.5),
  child: Container(
    padding: EdgeInsets.all(20),
    child: Text(
      'Tap me',
      style: TextStyle(fontSize: 18),
    ),
  ),
)

// InkWell with Material parent (required for ripple effect)
Material(
  color: Colors.blue[100],
  borderRadius: BorderRadius.circular(10),
  child: InkWell(
    borderRadius: BorderRadius.circular(10),
    onTap: () {
      print('Card tapped');
    },
    child: Container(
      padding: EdgeInsets.all(16.0),
      child: Text('Tap for ripple effect'),
    ),
  ),
)

// InkWell with custom splash and highlight colors
Material(
  borderRadius: BorderRadius.circular(8.0),
  child: InkWell(
    onTap: () {},
    splashColor: Colors.purple.withOpacity(0.5),
    highlightColor: Colors.yellow.withOpacity(0.3),
    borderRadius: BorderRadius.circular(8.0),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      child: Text('Custom Splash Colors'),
    ),
  ),
)

// Ink with gradient background and InkWell
Material(
  color: Colors.transparent,
  child: Ink(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.purple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      splashColor: Colors.white.withOpacity(0.3),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        child: Text(
          'Gradient Button',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ),
)

// InkWell with multiple callback types
InkWell(
  onTap: () {
    print('Tap');
  },
  onDoubleTap: () {
    print('Double tap');
  },
  onLongPress: () {
    print('Long press');
  },
  onTapDown: (details) {
    print('Tap down at: \${details.globalPosition}');
  },
  onTapCancel: () {
    print('Tap cancelled');
  },
  child: Container(
    padding: EdgeInsets.all(12),
    child: Text('Try different interactions'),
  ),
)

// Custom InkWell shape with ClipPath
ClipPath(
  clipper: CustomShapeClipper(),
  child: Material(
    color: Colors.orange,
    child: InkWell(
      onTap: () {},
      splashColor: Colors.red,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            'Custom Shape',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ),
  ),
)

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
''';

const String gestureDetectorCode = '''
// Basic Tap GestureDetector
GestureDetector(
  onTap: () {
    print('Container tapped!');
  },
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    child: Center(
      child: Text('Tap me', style: TextStyle(color: Colors.white)),
    ),
  ),
)

// Multiple gestures
GestureDetector(
  // Tap Callbacks
  onTap: () {
    print('Container tapped');
  },
  onDoubleTap: () {
    print('Container double tapped');
  },
  onLongPress: () {
    print('Container long pressed');
  },
  
  // Drag Callbacks
  onPanStart: (DragStartDetails details) {
    print('Pan started at \${details.globalPosition}');
  },
  onPanUpdate: (DragUpdateDetails details) {
    print('Pan updated: \${details.delta}');
  },
  onPanEnd: (DragEndDetails details) {
    print('Pan ended with velocity: \${details.velocity}');
  },
  
  child: Container(
    width: 150,
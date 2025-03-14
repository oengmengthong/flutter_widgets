const String opacityCode = '''
// Make widgets transparent with Opacity
Opacity(
  opacity: 0.5, // Value from 0.0 (invisible) to 1.0 (fully visible)
  child: Container(
    width: 150,
    height: 150,
    color: Colors.blue,
    child: const Center(
      child: Text(
        'Semi-transparent',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  ),
)

// For conditional opacity with better performance:
// Use Visibility(visible: false, maintainSize: true, maintainAnimation: true, maintainState: true)
// when you want to hide something but keep its space
''';

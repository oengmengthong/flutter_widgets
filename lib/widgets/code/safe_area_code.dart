const String safeAreaCode = '''
SafeArea(
  minimum: EdgeInsets.all(16.0), // Additional padding inside the safe area
  // You can selectively enable/disable edges
  top: true,     // Avoids the top notch, status bar
  bottom: true,  // Avoids the bottom home indicator, navigation bar
  left: true,    // Avoids the left edge
  right: true,   // Avoids the right edge
  child: Container(
    color: Colors.white,
    child: Column(
      children: [
        Container(
          color: Colors.blue.shade100,
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          child: Text('This content is safely inset'),
        ),
        Expanded(
          child: Center(
            child: Text(
              'SafeArea prevents content from being obscured by notches, '
              'status bars, and other system UI elements',
            ),
          ),
        ),
      ],
    ),
  ),
)
''';

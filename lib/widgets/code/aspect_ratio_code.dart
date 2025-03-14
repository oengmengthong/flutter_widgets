const String aspectRatioCode = '''
// Widescreen 16:9 aspect ratio
AspectRatio(
  aspectRatio: 16 / 9,
  child: Container(
    color: Colors.blue,
    child: Center(
      child: Text('16:9 Aspect Ratio'),
    ),
  ),
)

// Square 1:1 aspect ratio
AspectRatio(
  aspectRatio: 1,
  child: Container(
    color: Colors.green,
    child: Center(
      child: Text('1:1 Aspect Ratio'),
    ),
  ),
)

// Portrait 3:4 aspect ratio
AspectRatio(
  aspectRatio: 3 / 4,
  child: Container(
    color: Colors.orange,
    child: Center(
      child: Text('3:4 Aspect Ratio'),
    ),
  ),
)
''';

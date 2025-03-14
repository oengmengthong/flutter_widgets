const String fittedBoxCode = '''
Container(
  width: 200,
  height: 100,
  color: Colors.grey.shade200,
  child: FittedBox(
    fit: BoxFit.contain, // Try different fits: fill, cover, scaleDown, etc.
    child: Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.blue,
      child: Text(
        'This text will be resized to fit',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    ),
  ),
)
''';

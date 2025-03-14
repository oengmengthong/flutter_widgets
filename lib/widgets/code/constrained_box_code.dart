const String constrainedBoxCode = '''
ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 100.0,
    maxWidth: 200.0,
    minHeight: 50.0,
    maxHeight: 100.0,
  ),
  child: Container(
    color: Colors.blue,
    width: 300.0, // This will be constrained to maxWidth: 200.0
    height: 150.0, // This will be constrained to maxHeight: 100.0
    child: Center(
      child: Text(
        'This container is constrained',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)
''';

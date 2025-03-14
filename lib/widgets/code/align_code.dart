const String alignCode = '''
// Align widget with topRight alignment
Align(
  alignment: Alignment.topRight,
  child: Text('topRight'),
)

// Align widget with center alignment
Align(
  alignment: Alignment.center,
  child: Text('center'),
)

// Align widget with bottomLeft alignment
Align(
  alignment: Alignment.bottomLeft,
  child: Text('bottomLeft'),
)

// Custom alignment values
Align(
  alignment: Alignment(-0.5, 0.8), // x: -0.5, y: 0.8
  child: Text('Custom alignment'),
)
''';

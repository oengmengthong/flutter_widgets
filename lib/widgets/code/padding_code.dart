const String paddingCode = '''
// Example 1: All sides padding
Padding(
  padding: EdgeInsets.all(16.0),
  child: Text('Padding all around'),
)

// Example 2: Symmetric padding
Padding(
  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
  child: Text('Padding symmetric'),
)

// Example 3: Only specific sides
Padding(
  padding: EdgeInsets.only(left: 32.0, top: 8.0),
  child: Text('Padding only specific sides'),
)
''';

const String expandedCode = '''
Row(
  children: [
    Expanded(
      flex: 2,
      child: Card(
        color: Colors.red,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flex: 2',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
    SizedBox(width: 10),
    Expanded(
      flex: 1,
      child: Card(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flex: 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
    SizedBox(width: 10),
    Expanded(
      flex: 1,
      child: Card(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flex: 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  ],
)
''';

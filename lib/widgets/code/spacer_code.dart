const String spacerCode = '''
// Using Spacer in a Row
Row(
  children: [
    Container(
      width: 50,
      height: 50,
      color: Colors.red,
    ),
    Spacer(flex: 1), // Flexible space with flex factor 1
    Container(
      width: 50,
      height: 50,
      color: Colors.green,
    ),
    Spacer(flex: 2), // Flexible space with flex factor 2 (twice as large)
    Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    ),
  ],
)

// Using Spacer in a Column
Column(
  children: [
    Container(
      height: 50,
      color: Colors.purple,
    ),
    Spacer(), // Default flex is 1
    Container(
      height: 50,
      color: Colors.orange,
    ),
  ],
)

// Spacer is equivalent to Expanded with an empty SizedBox
// Spacer(flex: 1) == Expanded(flex: 1, child: SizedBox.shrink())
''';

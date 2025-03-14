const String flexibleCode = '''
Row(
  children: [
    Flexible(
      flex: 2,
      fit: FlexFit.tight,  // Like Expanded - takes all available space
      child: Container(
        color: Colors.red,
        child: Text('Flex: 2, Fit: tight'),
      ),
    ),
    SizedBox(width: 10),
    Flexible(
      flex: 1,
      fit: FlexFit.loose,  // Takes only needed space
      child: Container(
        color: Colors.green,
        child: Text('Flex: 1, Fit: loose'),
      ),
    ),
  ],
)

// The difference between Flexible and Expanded:
// - Expanded is equivalent to Flexible with fit: FlexFit.tight
// - Flexible with fit: FlexFit.loose only takes the needed space
// - Both can use the flex parameter to determine relative sizes
''';

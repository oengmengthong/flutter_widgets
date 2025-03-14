const String fractionallySizedBoxCode = '''
// 50% of parent's width and height, aligned to top left
FractionallySizedBox(
  widthFactor: 0.5,
  heightFactor: 0.5,
  alignment: Alignment.topLeft,
  child: Container(
    color: Colors.blue,
    child: Center(
      child: Text(
        '50% size',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)

// 70% of parent's width and height, aligned to center
FractionallySizedBox(
  widthFactor: 0.7,
  heightFactor: 0.7,
  alignment: Alignment.center,
  child: Container(
    color: Colors.green,
    child: Center(
      child: Text(
        '70% size',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)

// 100% width within parent
FractionallySizedBox(
  widthFactor: 1.0,
  child: ElevatedButton(
    child: Text('Full Width Button'),
    onPressed: () {},
  ),
)
''';

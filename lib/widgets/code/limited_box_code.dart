const String limitedBoxCode = '''
// LimitedBox with maximum width and height constraints
LimitedBox(
  maxWidth: 150,
  maxHeight: 100,
  child: Container(
    color: Colors.blue,
    child: Center(
      child: Text(
        'Limited to max width 150 and max height 100',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)

// LimitedBox is most useful in scrollable contexts
ListView(
  children: List.generate(
    10,
    (index) => LimitedBox(
      maxHeight: 100,
      child: Card(
        margin: EdgeInsets.all(8),
        child: Center(
          child: Text('Item \$index - Height limited to 100'),
        ),
      ),
    ),
  ),
)

// When used in a Row, LimitedBox can prevent horizontal expansion
Row(
  children: [
    LimitedBox(
      maxWidth: 200,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Limited width input',
        ),
      ),
    ),
    Icon(Icons.search),
  ],
)
''';

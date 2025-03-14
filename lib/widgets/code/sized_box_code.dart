const String sizedBoxCode = '''
// Empty SizedBox for spacing
SizedBox(height: 20)

// SizedBox with specific dimensions and a child
SizedBox(
  height: 50,
  width: 200,
  child: Center(
    child: Text('SizedBox with child'),
  ),
)

// SizedBox.expand - fills the available space
SizedBox.expand(
  child: Card(
    child: Center(
      child: Text('SizedBox.expand'),
    ),
  ),
)

// SizedBox.shrink - collapses to minimum size
SizedBox.shrink()

// SizedBox.fromSize - create from Size object
SizedBox.fromSize(
  size: Size(100, 50),
  child: Text('From Size'),
)
''';

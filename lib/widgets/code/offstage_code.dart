const String offstageCode = '''
bool _isOffstage = false;

Offstage(
  offstage: _isOffstage, // When true, the child is not visible but still in the tree
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    child: Center(
      child: Text(
        'This widget can be hidden',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)

// Toggle visibility with:
// setState(() {
//   _isOffstage = !_isOffstage;
// });
''';

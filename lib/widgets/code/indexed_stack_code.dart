const String indexedStackCode = '''
// Only one child is visible at a time while keeping others in the tree
int _currentIndex = 0;

IndexedStack(
  index: _currentIndex, // The index of the child to show
  alignment: Alignment.center,
  children: [
    Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Page 1',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Page 2',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Page 3',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ),
  ],
)

// Use setState to change which child is visible:
// setState(() {
//   _currentIndex = 1; // Show the second child
// });
''';

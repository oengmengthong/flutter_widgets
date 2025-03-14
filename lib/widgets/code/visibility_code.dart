const String visibilityCode = '''
bool _isVisible = true;

@override
Widget build(BuildContext context) {
  return Column(
    children: [
      Visibility(
        visible: _isVisible,
        maintainState: true, // Keep the widget in the tree
        maintainAnimation: true, // Keep animations running
        maintainSize: true, // Keep the space occupied
        child: Container(
          width: 150,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Text('This content can be hidden',
                style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Text(_isVisible ? 'Hide Content' : 'Show Content'),
      ),
    ],
  );
}
''';

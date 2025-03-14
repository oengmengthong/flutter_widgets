const String sizedOverflowBoxCode = '''
Container(
  color: Colors.grey.shade200,
  width: 200.0,
  height: 100.0,
  child: Center(
    child: SizedOverflowBox(
      size: Size(100.0, 50.0),
      alignment: Alignment.center,
      child: Container(
        width: 150.0,
        height: 70.0,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Overflow Content',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  ),
)
''';

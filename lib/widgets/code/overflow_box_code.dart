const String overflowBoxCode = '''
Container(
  height: 100,
  width: 100,
  color: Colors.grey.shade200,
  child: Center(
    child: OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxWidth: 200.0,
      maxHeight: 200.0,
      child: Container(
        width: 150.0,
        height: 150.0,
        color: Colors.blue.withOpacity(0.5),
        child: Center(
          child: Text(
            'This widget overflows',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  ),
)

// Unlike SizedBox which clips its child,
// OverflowBox allows its child to overflow
''';

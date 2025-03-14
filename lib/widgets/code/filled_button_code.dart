const String filledButtonCode = '''
// Basic FilledButton
FilledButton(
  onPressed: () {
    // Handle button press
  },
  child: Text('Click Me'),
)

// FilledButton with icon
FilledButton.icon(
  onPressed: () {
    // Handle button press
  },
  icon: Icon(Icons.cloud_upload),
  label: Text('Upload'),
)

// Styled FilledButton
FilledButton(
  onPressed: () {
    // Handle button press
  },
  style: FilledButton.styleFrom(
    backgroundColor: Colors.orange,
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  child: Text('Custom Style'),
)

// Disabled FilledButton
FilledButton(
  onPressed: null, // Button is disabled when onPressed is null
  child: Text('Disabled'),
)

// FilledButton with gradient background using ShaderMask
ShaderMask(
  shaderCallback: (Rect bounds) {
    return LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).createShader(bounds);
  },
  child: FilledButton(
    onPressed: () {},
    style: FilledButton.styleFrom(
      backgroundColor: Colors.white, // This will be replaced by the gradient
    ),
    child: Text('Gradient Button'),
  ),
)
''';

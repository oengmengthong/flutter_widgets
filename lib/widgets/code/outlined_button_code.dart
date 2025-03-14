const String outlinedButtonCode = '''
// Basic OutlinedButton
OutlinedButton(
  onPressed: () {
    // Handle button press
  },
  child: Text('Click Me'),
)

// OutlinedButton with icon
OutlinedButton.icon(
  onPressed: () {
    // Handle button press
  },
  icon: Icon(Icons.favorite),
  label: Text('Like'),
)

// Styled OutlinedButton
OutlinedButton(
  onPressed: () {
    // Handle button press
  },
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.deepPurple,
    side: BorderSide(color: Colors.deepPurple, width: 2),
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  child: Text('Custom Style'),
)

// Disabled OutlinedButton
OutlinedButton(
  onPressed: null, // Button is disabled when onPressed is null
  child: Text('Disabled'),
)

// OutlinedButton with a splash color
OutlinedButton(
  onPressed: () {},
  style: ButtonStyle(
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Colors.green.withOpacity(0.2);
        return null; // Use default overlay color for other states
      },
    ),
  ),
  child: Text('With Splash Effect'),
)
''';

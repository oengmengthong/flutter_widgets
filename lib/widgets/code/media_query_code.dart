const String mediaQueryCode = '''
// Getting screen dimensions
Widget build(BuildContext context) {
  // Get the screen size
  final Size screenSize = MediaQuery.of(context).size;
  final double screenWidth = screenSize.width;
  final double screenHeight = screenSize.height;
  
  return Container(
    // Make the container half the width of the screen
    width: screenWidth / 2,
    height: 100,
    color: Colors.blue,
    child: Center(
      child: Text('Width: \$screenWidth, Height: \$screenHeight'),
    ),
  );
}

// Checking device orientation
Widget build(BuildContext context) {
  final Orientation orientation = MediaQuery.of(context).orientation;
  
  return orientation == Orientation.portrait
      ? Column(
          children: [
            Container(height: 100, color: Colors.red),
            Container(height: 100, color: Colors.blue),
          ],
        )
      : Row(
          children: [
            Expanded(child: Container(color: Colors.red)),
            Expanded(child: Container(color: Colors.blue)),
          ],
        );
}

// Handling safe area insets
Widget build(BuildContext context) {
  // Get the padding for safe areas (notches, status bar, etc.)
  final EdgeInsets padding = MediaQuery.of(context).padding;
  
  return Container(
    // Apply padding to avoid UI elements being covered by system UI
    padding: EdgeInsets.only(
      top: padding.top,
      bottom: padding.bottom,
      left: padding.left,
      right: padding.right,
    ),
    child: Text('Content is now safely padded'),
  );
}

// Checking dark mode
Widget build(BuildContext context) {
  final Brightness brightness = MediaQuery.of(context).platformBrightness;
  final bool isDarkMode = brightness == Brightness.dark;
  
  return Container(
    color: isDarkMode ? Colors.black : Colors.white,
    child: Text(
      'This is \${isDarkMode ? "dark" : "light"} mode',
      style: TextStyle(
        color: isDarkMode ? Colors.white : Colors.black,
      ),
    ),
  );
}

// Checking text scale factor for accessibility
Widget build(BuildContext context) {
  final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
  
  return Text(
    'This text respects the system font size setting',
    // Use the textScaleFactor to scale your font size accordingly
    style: TextStyle(fontSize: 16 * textScaleFactor),
  );
}

// Responsive layout with MediaQuery
Widget build(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  
  // Responsive layout based on screen width
  if (size.width < 600) {
    return MobileLayout();
  } else if (size.width < 1200) {
    return TabletLayout();
  } else {
    return DesktopLayout();
  }
}

// Creating a custom MediaQuery
MediaQuery(
  // Override specific MediaQueryData values
  data: MediaQuery.of(context).copyWith(
    textScaleFactor: 1.0, // Force a specific text scale factor
    platformBrightness: Brightness.light, // Force light mode
  ),
  child: MyWidget(),
)
''';

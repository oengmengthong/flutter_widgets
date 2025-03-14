const String mediaQueryOfCode = '''
// Getting screen dimensions
void getScreenSize(BuildContext context) {
  // Access the MediaQuery data
  final mediaQuery = MediaQuery.of(context);
  
  // Get screen size
  final screenWidth = mediaQuery.size.width;
  final screenHeight = mediaQuery.size.height;
  
  // Print dimensions
  print('Screen width: \$screenWidth');
  print('Screen height: \$screenHeight');
}

// Creating a responsive layout based on screen size
Widget buildResponsiveLayout(BuildContext context) {
  final size = MediaQuery.of(context).size;
  
  // Determine if we're on a small screen
  final bool isSmallScreen = size.width < 600;
  
  return isSmallScreen
      ? Column(
          children: [
            // Layout for small screens
            Container(height: 100, color: Colors.blue),
            Container(height: 100, color: Colors.red),
          ],
        )
      : Row(
          children: [
            // Layout for larger screens
            Expanded(child: Container(color: Colors.blue)),
            Expanded(child: Container(color: Colors.red)),
          ],
        );
}

// Getting device orientation
Orientation getOrientation(BuildContext context) {
  return MediaQuery.of(context).orientation;
}

// Using orientation to adjust UI
Widget orientationAwareWidget(BuildContext context) {
  final orientation = MediaQuery.of(context).orientation;
  
  return orientation == Orientation.portrait
      ? Column(
          children: [
            Icon(Icons.phone_android, size: 100),
            Text('Portrait Mode'),
          ],
        )
      : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_android, size: 100),
            SizedBox(width: 20),
            Text('Landscape Mode'),
          ],
        );
}

// Checking for dark mode
bool isDarkMode(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.dark;
}

// Adjusting UI based on text scale factor
Widget accessibilityAwareText(BuildContext context) {
  final textScaleFactor = MediaQuery.of(context).textScaleFactor;
  
  return Text(
    'This text adjusts to accessibility settings',
    style: TextStyle(
      fontSize: 16.0,
      // Adjust line height when text is scaled up for better readability
      height: textScaleFactor > 1.3 ? 1.2 : 1.0,
    ),
  );
}

// Safe area calculation for notches and system UI
Widget safeAreaCalculation(BuildContext context) {
  final padding = MediaQuery.of(context).padding;
  
  return Container(
    // Apply padding to avoid system UI elements
    padding: EdgeInsets.only(
      top: padding.top,
      bottom: padding.bottom,
      left: padding.left,
      right: padding.right,
    ),
    child: Text('Content is safe from system UI intrusions'),
  );
}

// MediaQuery.of with Inherited Widget Efficiency
Widget efficientMediaQueryUsage(BuildContext context) {
  // Store media query once at the top
  final mediaQuery = MediaQuery.of(context);
  final size = mediaQuery.size;
  final orientation = mediaQuery.orientation;
  final brightness = mediaQuery.platformBrightness;
  
  return Column(
    children: [
      Text('Width: \${size.width}'),
      Text('Height: \${size.height}'),
      Text('Orientation: \$orientation'),
      Text('Brightness: \$brightness'),
    ],
  );
}

// Accessing the MediaQuery data in your build method
Widget build(BuildContext context) {
  // Get MediaQuery data for the current context
  final mediaQuery = MediaQuery.of(context);
  
  // Screen dimensions
  final screenWidth = mediaQuery.size.width;
  final screenHeight = mediaQuery.size.height;
  
  // Device orientation
  final orientation = mediaQuery.orientation; // portrait or landscape
  
  // Safe areas (notches, status bars, bottom navigation)
  final padding = mediaQuery.padding;
  final topPadding = padding.top;    // Status bar height
  final bottomPadding = padding.bottom;  // Bottom safe area height
  
  // Keyboard height when shown
  final keyboardHeight = mediaQuery.viewInsets.bottom;
  
  // Device pixel ratio
  final devicePixelRatio = mediaQuery.devicePixelRatio;
  
  // Platform brightness (light/dark mode)
  final isDarkMode = mediaQuery.platformBrightness == Brightness.dark;
  
  // Create a responsive layout based on screen size
  return Container(
    // Use screen width to make a responsive container
    width: screenWidth * 0.8, // 80% of screen width
    
    // Adjust height based on orientation
    height: orientation == Orientation.portrait ? 200 : 100,
    
    // Adjust padding based on device safe areas
    padding: EdgeInsets.only(
      top: topPadding + 8.0,
      bottom: bottomPadding + 8.0,
    ),
    
    child: Column(
      children: [
        Text('Screen size: \${screenWidth.toInt()}×\${screenHeight.toInt()}'),
        Text('Orientation: \${orientation.name}'),
        Text('Device ratio: \${devicePixelRatio.toStringAsFixed(1)}'),
        Text('Dark mode: \${isDarkMode ? 'Yes' : 'No'}'),
        
        // Adjust layout based on screen width
        if (screenWidth > 600)
          const Text('Wide screen layout')
        else
          const Text('Narrow screen layout'),
      ],
    ),
  );
}

// Creating a MediaQuery-aware widget
class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double widthFactor;
  
  const ResponsiveContainer({
    Key? key, 
    required this.child,
    this.widthFactor = 0.8,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // Get the screen size through MediaQuery
    final screenSize = MediaQuery.of(context).size;
    
    return Container(
      width: screenSize.width * widthFactor,
      child: child,
    );
  }
}
''';

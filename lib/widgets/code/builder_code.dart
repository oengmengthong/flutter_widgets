const String builderCode = '''
Builder(
  builder: (BuildContext context) {
    // This context allows access to InheritedWidgets
    // at this specific point in the widget tree
    
    // Example: Get MediaQuery data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    
    // Example: Get Theme data
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    
    return Container(
      color: primaryColor,
      child: Text(
        'Screen size: ${screenWidth.toInt()}×${screenHeight.toInt()}',
        style: theme.textTheme.bodyLarge,
      ),
    );
  },
)

// Builder is useful when you need to access inherited widgets
// like Theme, MediaQuery, Scaffold, etc. at a specific point
''';

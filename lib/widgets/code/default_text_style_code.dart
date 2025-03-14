const String defaultTextStyleCode = '''
// Basic DefaultTextStyle
DefaultTextStyle(
  style: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  child: Column(
    children: [
      Text('This text inherits the style'),
      Text('This text also inherits the style'),
      Text(
        'This text overrides the style',
        style: TextStyle(
          color: Colors.red,
          fontSize: 14.0,
        ),
      ),
    ],
  ),
)

// DefaultTextStyle with text alignment and overflow
DefaultTextStyle(
  style: TextStyle(
    fontSize: 16.0,
    color: Colors.green,
  ),
  textAlign: TextAlign.center,
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
  child: Text(
    'This is a very long text that will be center-aligned and truncated with ellipsis if it exceeds two lines.',
  ),
)

// Nested DefaultTextStyle
DefaultTextStyle(
  style: TextStyle(fontSize: 20.0, color: Colors.black),
  child: Column(
    children: [
      Text('This text uses the outer DefaultTextStyle'),
      DefaultTextStyle(
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
        child: Column(
          children: [
            Text('This text uses the nested DefaultTextStyle'),
            Text('So does this one'),
            Text(
              'This one has its own style',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
)

// DefaultTextStyle with conditional styling
DefaultTextStyle(
  style: isError
      ? TextStyle(color: Colors.red, fontSize: 14.0)
      : TextStyle(color: Colors.green, fontSize: 14.0),
  child: Text(isError ? 'Error message' : 'Success message'),
)

// Inheriting and modifying the existing DefaultTextStyle
Builder(
  builder: (context) {
    // Get the current DefaultTextStyle
    final DefaultTextStyle parent = DefaultTextStyle.of(context);
    
    // Create a new TextStyle based on the parent
    final TextStyle newStyle = parent.style.copyWith(
      color: Colors.purple,
      fontWeight: FontWeight.bold,
    );
    
    return DefaultTextStyle(
      style: newStyle,
      child: Text('This text inherits and modifies the parent style'),
    );
  },
)
''';

const String textCode = '''
// Basic Text widget
Text('Hello, Flutter!')

// Text with style
Text(
  'Styled Text',
  style: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    letterSpacing: 1.5,
    height: 1.2,
  ),
)

// Text with alignment and direction
Text(
  'This text is aligned to the right.',
  textAlign: TextAlign.right,
  textDirection: TextDirection.ltr,
)

// Text with overflow handling
Text(
  'This is a very long text that will be truncated if it does not fit in one line.',
  overflow: TextOverflow.ellipsis,
  maxLines: 1,
)

// Text with decorations
Text(
  'Underlined text with custom decoration',
  style: TextStyle(
    decoration: TextDecoration.underline,
    decorationColor: Colors.red,
    decorationStyle: TextDecorationStyle.dotted,
    decorationThickness: 2.0,
  ),
)

// Text with soft wrap options and text scale factor
Text(
  'This text demonstrates custom soft wrapping and scale factor.',
  softWrap: true,
  textScaleFactor: 1.2,
)

// Text with shadows
Text(
  'Text with shadow',
  style: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.purple,
    shadows: [
      Shadow(
        color: Colors.black.withOpacity(0.3),
        offset: Offset(3, 3),
        blurRadius: 5,
      ),
    ],
  ),
)

// Rich Text alternative using Text.rich
Text.rich(
  TextSpan(
    text: 'Hello ',
    style: TextStyle(fontSize: 16),
    children: [
      TextSpan(
        text: 'bold',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(text: ' world!'),
    ],
  ),
)

// Text using system fonts
Text(
  'Using system font',
  style: TextStyle(
    fontFamily: 'Roboto', // Uses system font
    fontSize: 18.0,
  ),
)

// Text with font features (advanced typography)
Text(
  'Text with font features',
  style: TextStyle(
    fontFeatures: [
      FontFeature.enabledLigatures(), // Ligatures
      FontFeature.oldstyleFigures(), // Old-style figures
      FontFeature.tabularFigures(), // Monospaced figures for tables
    ],
  ),
)
''';

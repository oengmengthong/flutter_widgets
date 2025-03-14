const String iconCode = '''
// Basic Icon
Icon(Icons.home)

// Icon with color
Icon(
  Icons.favorite,
  color: Colors.red,
)

// Icon with custom size
Icon(
  Icons.star,
  size: 48.0,
)

// Icon with color and size
Icon(
  Icons.access_alarm,
  color: Colors.blue,
  size: 30.0,
)

// Icon with semantic label for accessibility
Icon(
  Icons.accessibility,
  semanticLabel: 'Accessibility',
)

// Icon with shadow
Container(
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 5.0,
        offset: Offset(2, 2),
      ),
    ],
  ),
  child: Icon(
    Icons.account_circle,
    size: 40.0,
    color: Colors.white,
  ),
)

// Icon in a CircleAvatar
CircleAvatar(
  backgroundColor: Colors.blue,
  child: Icon(
    Icons.person,
    color: Colors.white,
  ),
)

// Icon with background
Container(
  padding: EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    color: Colors.green.withOpacity(0.2),
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Icon(
    Icons.eco,
    color: Colors.green,
    size: 24.0,
  ),
)

// Icon with gradient color using ShaderMask
ShaderMask(
  shaderCallback: (Rect bounds) {
    return LinearGradient(
      colors: [Colors.purple, Colors.blue],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).createShader(bounds);
  },
  child: Icon(
    Icons.favorite,
    size: 40.0,
    color: Colors.white, // This color will be replaced with the gradient
  ),
)

// Using Material Icons from different categories
// Action Icons
Icon(Icons.search)
Icon(Icons.delete)
Icon(Icons.settings)

// Navigation Icons
Icon(Icons.arrow_back)
Icon(Icons.menu)
Icon(Icons.close)

// Alert/Communication Icons
Icon(Icons.warning)
Icon(Icons.message)
Icon(Icons.email)

// AV Icons
Icon(Icons.play_arrow)
Icon(Icons.pause)
Icon(Icons.volume_up)

// Content Icons
Icon(Icons.add)
Icon(Icons.create)
Icon(Icons.filter_list)

// Toggle Icons
Icon(Icons.check_box)
Icon(Icons.radio_button_checked)
Icon(Icons.star)

// Custom Icon from font (you need to include the font in pubspec.yaml)
Icon(
  IconData(0xe800, fontFamily: 'MyCustomFont'),
  color: Colors.black,
  size: 24.0,
)
''';

const String colorFilteredCode = '''
// Basic ColorFiltered with color mode
ColorFiltered(
  colorFilter: ColorFilter.mode(
    Colors.blue,
    BlendMode.modulate,
  ),
  child: Image.asset('assets/image.jpg'),
)

// ColorFiltered with grayscale transformation
ColorFiltered(
  // Matrix for grayscale effect
  colorFilter: ColorFilter.matrix(<double>[
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0, 0, 0, 1, 0,
  ]),
  child: Image.network('https://example.com/image.jpg'),
)

// ColorFiltered with sepia effect
ColorFiltered(
  colorFilter: ColorFilter.matrix(<double>[
    0.393, 0.769, 0.189, 0, 0,
    0.349, 0.686, 0.168, 0, 0,
    0.272, 0.534, 0.131, 0, 0,
    0, 0, 0, 1, 0,
  ]),
  child: Container(
    height: 200,
    width: 300,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/image.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  ),
)

// Using ColorFiltered with different blend modes
ColorFiltered(
  colorFilter: ColorFilter.mode(
    Colors.orange, 
    BlendMode.overlay,
  ),
  child: FlutterLogo(size: 150),
)

// Applying ColorFiltered to a widget tree
ColorFiltered(
  colorFilter: ColorFilter.mode(
    Colors.red.withOpacity(0.5), 
    BlendMode.srcATop,
  ),
  child: Column(
    children: [
      Image.asset('assets/image1.jpg'),
      const SizedBox(height: 8),
      Image.asset('assets/image2.jpg'),
      const SizedBox(height: 8),
      Container(
        padding: EdgeInsets.all(16),
        color: Colors.blue,
        child: Text(
          'This text is also affected by the color filter',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ],
  ),
)

// Creating a night mode effect with ColorFiltered
ColorFiltered(
  colorFilter: ColorFilter.matrix(<double>[
    -0.5, 0, 0, 0, 255, // Red
    0, -0.5, 0, 0, 255, // Green
    0, 0, -0.5, 0, 255, // Blue
    0, 0, 0, 1, 0, // Alpha
  ]),
  child: YourWidget(),
)
''';

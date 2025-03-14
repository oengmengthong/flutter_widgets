const String imageCode = '''
// Basic Image from network
Image.network(
  'https://example.com/image.jpg',
)

// Image with width, height and fit
Image.network(
  'https://example.com/image.jpg',
  width: 200,
  height: 150,
  fit: BoxFit.cover,
)

// Image with loading placeholder
Image.network(
  'https://example.com/image.jpg',
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null 
            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  },
)

// Image with error handling
Image.network(
  'https://example.com/image.jpg',
  errorBuilder: (context, error, stackTrace) {
    return Container(
      color: Colors.grey[300],
      alignment: Alignment.center,
      child: Text(
        'Error loading image',
        style: TextStyle(color: Colors.red),
      ),
    );
  },
)

// Image from asset
Image.asset(
  'assets/images/my_image.jpg',
  width: 300,
  height: 200,
  fit: BoxFit.cover,
)

// Image with color blending
Image.network(
  'https://example.com/image.jpg',
  color: Colors.blue,
  colorBlendMode: BlendMode.color,
)

// Circular Image (ClipOval + Image)
ClipOval(
  child: Image.network(
    'https://example.com/profile.jpg',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
)

// Rounded corners Image (ClipRRect + Image)
ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.network(
    'https://example.com/image.jpg',
    width: 200,
    height: 150,
    fit: BoxFit.cover,
  ),
)

// Image with different BoxFit options
// BoxFit.contain: The image will be contained within the widget's bounds while preserving aspect ratio
Image.network(
  'https://example.com/image.jpg',
  width: 200,
  height: 150,
  fit: BoxFit.contain,
)

// BoxFit.fill: The image will fill the widget's bounds, which might distort the aspect ratio
Image.network(
  'https://example.com/image.jpg',
  width: 200,
  height: 150,
  fit: BoxFit.fill,
)

// BoxFit.cover: The image will cover the widget's bounds while preserving aspect ratio
Image.network(
  'https://example.com/image.jpg',
  width: 200,
  height: 150,
  fit: BoxFit.cover,
)

// Using image memory
Image.memory(
  Uint8List.fromList([/* your image bytes here */]),
  width: 200,
  height: 150,
  fit: BoxFit.cover,
)
''';

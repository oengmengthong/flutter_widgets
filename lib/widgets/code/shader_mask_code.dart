const String shaderMaskCode = '''
// Gradient text with ShaderMask
ShaderMask(
  shaderCallback: (Rect bounds) {
    return LinearGradient(
      colors: [Colors.blue, Colors.green, Colors.yellow, Colors.red],
      stops: [0.0, 0.3, 0.7, 1.0],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).createShader(bounds);
  },
  blendMode: BlendMode.srcATop,
  child: Text(
    'GRADIENT TEXT',
    style: TextStyle(
      color: Colors.white,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
  ),
)

// Fade out image at the bottom
Container(
  height: 200,
  width: double.infinity,
  child: ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.black, Colors.transparent],
        stops: [0.7, 1.0],
      ).createShader(bounds);
    },
    blendMode: BlendMode.dstIn,
    child: Image.network(
      'https://picsum.photos/600/400',
      fit: BoxFit.cover,
    ),
  ),
)

// Radial gradient shader
ShaderMask(
  shaderCallback: (Rect bounds) {
    return RadialGradient(
      center: Alignment.center,
      radius: 0.5,
      colors: [Colors.yellow, Colors.deepOrange],
      tileMode: TileMode.mirror,
    ).createShader(bounds);
  },
  child: Icon(
    Icons.star,
    size: 120,
    color: Colors.white,
  ),
)

// Sweep gradient shader (like a clock hand or color wheel)
ShaderMask(
  shaderCallback: (Rect bounds) {
    return SweepGradient(
      center: Alignment.center,
      startAngle: 0,
      endAngle: 3.14 * 2, // Full circle
      colors: [
        Colors.red,
        Colors.orange,
        Colors.yellow,
        Colors.green,
        Colors.blue,
        Colors.indigo,
        Colors.purple,
        Colors.red,
      ],
      stops: [0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 1.0],
    ).createShader(bounds);
  },
  child: Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
  ),
)

// Using ShaderMask for image effects
ShaderMask(
  shaderCallback: (Rect bounds) {
    return LinearGradient(
      colors: [
        Colors.transparent,
        Colors.black.withOpacity(0.8),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(bounds);
  },
  blendMode: BlendMode.darken,
  child: Stack(
    children: [
      Image.network(
        'https://picsum.photos/600/400',
        fit: BoxFit.cover,
        height: 300,
        width: double.infinity,
      ),
      Positioned(
        bottom: 20,
        left: 20,
        child: Text(
          'Image Caption',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
)
''';

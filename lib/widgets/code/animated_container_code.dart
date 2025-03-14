const String animatedContainerCode = '''
// Basic AnimatedContainer with state changes
class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _expanded = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: _expanded ? 200 : 100,
          height: _expanded ? 200 : 100,
          color: _expanded ? Colors.purple : Colors.blue,
          child: Center(
            child: Text(
              _expanded ? 'Expanded!' : 'Tap me!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
          child: Text(_expanded ? 'Shrink' : 'Expand'),
        ),
      ],
    );
  }
}

// AnimatedContainer with complex animations
AnimatedContainer(
  duration: Duration(milliseconds: 600),
  curve: Curves.fastOutSlowIn,
  width: _width,
  height: _height,
  decoration: BoxDecoration(
    color: _color,
    borderRadius: BorderRadius.circular(_borderRadius),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: _isExpanded ? 12 : 4,
        offset: Offset(0, _isExpanded ? 8 : 2),
      ),
    ],
  ),
  transform: Matrix4.rotationZ(_isExpanded ? 0.1 : 0.0),
  alignment: _isExpanded ? Alignment.center : Alignment.topLeft,
  child: Center(
    child: Icon(
      _isExpanded ? Icons.fullscreen_exit : Icons.fullscreen,
      color: Colors.white,
      size: 30,
    ),
  ),
)

// Color transition with AnimatedContainer
AnimatedContainer(
  duration: Duration(milliseconds: 800),
  curve: Curves.easeInOut,
  height: 100,
  width: 100,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        _firstColor,
        _secondColor,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.circular(_isRounded ? 50 : 0),
  ),
  child: Icon(
    _isRounded ? Icons.check : Icons.close,
    color: Colors.white,
  ),
)

// Animated Container for Loading Indicator
class LoadingIndicator extends StatefulWidget {
  @override
  _LoadingIndicatorState createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> with TickerProviderStateMixin {
  bool _isLoading = true;
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
    
    // Simulate finishing load after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
      _controller.stop();
    });
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _isLoading ? 100 : 200,
          height: 100,
          decoration: BoxDecoration(
            color: _isLoading ? Colors.blue : Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: _isLoading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
                : Text(
                    'Completed!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
''';

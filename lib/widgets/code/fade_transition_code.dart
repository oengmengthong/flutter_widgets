const String fadeTransitionCode = '''
// FadeTransition requires an AnimationController
// Usually implemented in a StatefulWidget
class FadeTransitionExample extends StatefulWidget {
  @override
  _FadeTransitionExampleState createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample> 
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
    
    // Optional: auto-start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Important to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeTransition(
          opacity: _animation,
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('Fade In')),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _controller.forward(),
              child: Text('Fade In'),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () => _controller.reverse(),
              child: Text('Fade Out'),
            ),
          ],
        ),
      ],
    );
  }
}

// Using FadeTransition with CurvedAnimation for non-linear animation
CurvedAnimation curvedAnimation = CurvedAnimation(
  parent: _controller,
  curve: Curves.easeIn, // Various curves: easeOut, elasticOut, bounceOut, etc.
);

FadeTransition(
  opacity: curvedAnimation,
  child: yourWidget,
)

// Advanced usage with multiple animations
class MultipleAnimationsExample extends StatefulWidget {
  @override
  _MultipleAnimationsExampleState createState() => _MultipleAnimationsExampleState();
}

class _MultipleAnimationsExampleState extends State<MultipleAnimationsExample>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    
    // Fade controller
    _fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_fadeController);
    
    // Slide controller
    _slideController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0), // Start off-screen to the left
      end: Offset.zero, // End at normal position
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOut,
    ));
    
    // Start the animations one after another
    _fadeController.forward().then((_) => _slideController.forward());
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: Container(
          width: 200,
          height: 100,
          color: Colors.green,
          child: Center(child: Text('Fade & Slide')),
        ),
      ),
    );
  }
}
''';

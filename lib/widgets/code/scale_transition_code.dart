const String scaleTransitionCode = '''
// ScaleTransition in a StatefulWidget
class ScaleTransitionExample extends StatefulWidget {
  @override
  _ScaleTransitionExampleState createState() => _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    ));
    
    // Start the animation automatically
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Scale Animation',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

// ScaleTransition with alignment
ScaleTransition(
  scale: _animation,
  alignment: Alignment.bottomRight, // Scale from bottom-right corner
  child: Container(
    width: 100,
    height: 100,
    color: Colors.red,
  ),
)

// Scale with Curve
Animation<double> _animation = Tween<double>(
  begin: 0.5,
  end: 1.0,
).animate(CurvedAnimation(
  parent: _controller,
  curve: Curves.bounceOut,
));

// ScaleTransition as part of a staggered animation
class StaggeredAnimationExample extends StatefulWidget {
  @override
  _StaggeredAnimationExampleState createState() => _StaggeredAnimationExampleState();
}

class _StaggeredAnimationExampleState extends State<StaggeredAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    // Create animations with different timings
    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.6, curve: Curves.elasticOut),
    ));
    
    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.3, 0.8, curve: Curves.easeIn),
    ));
    
    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.6, 1.0, curve: Curves.fastOutSlowIn),
    ));
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: FadeTransition(
          opacity: _opacityAnimation,
          child: AnimatedBuilder(
            animation: _colorAnimation,
            builder: (context, child) {
              return Container(
                width: 200,
                height: 200,
                color: _colorAnimation.value,
                child: child,
              );
            },
            child: Center(
              child: Text(
                'Staggered Animation',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Pulse animation using ScaleTransition
class PulseAnimation extends StatefulWidget {
  @override
  _PulseAnimationState createState() => _PulseAnimationState();
}

class _PulseAnimationState extends State<PulseAnimation> 
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);
    
    _animation = Tween<double>(
      begin: 1.0,
      end: 1.2,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
''';

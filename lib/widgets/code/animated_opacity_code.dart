const String animatedOpacityCode = '''
// Basic AnimatedOpacity example
class FadeWidget extends StatefulWidget {
  @override
  _FadeWidgetState createState() => _FadeWidgetState();
}

class _FadeWidgetState extends State<FadeWidget> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity > 0.5 ? 0.2 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 800),
          curve: Curves.easeInOut,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Fade Me',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleOpacity,
          child: Text(_opacity > 0.5 ? 'Fade Out' : 'Fade In'),
        ),
      ],
    );
  }
}

// AnimatedOpacity with onEnd callback
AnimatedOpacity(
  opacity: _visible ? 1.0 : 0.0,
  duration: Duration(milliseconds: 500),
  onEnd: () {
    print('Animation completed!');
    setState(() {
      _animationCompleted = true;
    });
  },
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text('This widget fades in and out'),
    ),
  ),
)

// Multiple AnimatedOpacity widgets with staggered timing
Column(
  children: [
    AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
      child: Text('First item'),
    ),
    AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      // Delay this animation to create a staggered effect
      child: FutureBuilder(
        future: _isVisible ? Future.delayed(Duration(milliseconds: 200)) : null,
        builder: (context, snapshot) {
          return Text('Second item');
        },
      ),
    ),
    AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      // Delay this animation further
      child: FutureBuilder(
        future: _isVisible ? Future.delayed(Duration(milliseconds: 400)) : null,
        builder: (context, snapshot) {
          return Text('Third item');
        },
      ),
    ),
  ],
)

// Animating between widgets with AnimatedOpacity
Stack(
  children: [
    AnimatedOpacity(
      opacity: _showFirstWidget ? 1.0 : 0.0,
      duration: Duration(milliseconds: 300),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(child: Text('Widget 1')),
      ),
    ),
    AnimatedOpacity(
      opacity: _showFirstWidget ? 0.0 : 1.0,
      duration: Duration(milliseconds: 300),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Center(child: Text('Widget 2')),
      ),
    ),
  ],
)

// AnimatedOpacity with loading state
AnimatedOpacity(
  opacity: _isLoading ? 0.6 : 1.0,
  duration: Duration(milliseconds: 300),
  child: AbsorbPointer(
    absorbing: _isLoading,
    child: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Username'),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isLoading = true;
              });
              // Simulate login request
              Future.delayed(Duration(seconds: 2), () {
                setState(() {
                  _isLoading = false;
                });
              });
            },
            child: Text('Login'),
          ),
        ],
      ),
    ),
  ),
)
''';

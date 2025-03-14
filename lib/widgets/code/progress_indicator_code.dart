const String circularProgressIndicatorCode = '''
// Basic indeterminate circular progress indicator
CircularProgressIndicator()

// Customized circular progress indicator
CircularProgressIndicator(
  backgroundColor: Colors.grey[300],
  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
  strokeWidth: 5.0,
)

// Determinate circular progress indicator (shows specific progress)
CircularProgressIndicator(
  value: 0.7, // 70% complete
  backgroundColor: Colors.grey[300],
  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
  strokeWidth: 5.0,
)

// Animated progress indicator
// Use in a StatefulWidget with AnimationController:
class AnimatedProgressExample extends StatefulWidget {
  @override
  _AnimatedProgressExampleState createState() => _AnimatedProgressExampleState();
}

class _AnimatedProgressExampleState extends State<AnimatedProgressExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _valueAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    
    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(_controller);
    
    _valueAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
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
        return CircularProgressIndicator(
          value: _valueAnimation.value,
          valueColor: AlwaysStoppedAnimation<Color>(_colorAnimation.value!),
        );
      },
    );
  }
}
''';

const String linearProgressIndicatorCode = '''
// Basic indeterminate linear progress indicator
LinearProgressIndicator()

// Customized linear progress indicator
LinearProgressIndicator(
  backgroundColor: Colors.grey[300],
  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
  minHeight: 10.0,
)

// Determinate linear progress indicator
LinearProgressIndicator(
  value: 0.5, // 50% complete
  backgroundColor: Colors.grey[300],
  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
)

// Progress indicator with animation (in a StatefulWidget)
class DownloadProgressExample extends StatefulWidget {
  @override
  _DownloadProgressExampleState createState() => _DownloadProgressExampleState();
}

class _DownloadProgressExampleState extends State<DownloadProgressExample> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    // Simulate a download operation
    _startDownload();
  }

  void _startDownload() {
    const oneSec = Duration(milliseconds: 100);
    Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (_progressValue >= 1.0) {
          timer.cancel();
        } else {
          _progressValue += 0.01;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: _progressValue,
          backgroundColor: Colors.grey[300],
        ),
        SizedBox(height: 10),
        Text('Downloading: \${(_progressValue * 100).toStringAsFixed(1)}%'),
      ],
    );
  }
}
''';

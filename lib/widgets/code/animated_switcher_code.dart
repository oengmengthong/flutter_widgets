const String animatedSwitcherCode = '''
int _count = 0;

AnimatedSwitcher(
  duration: Duration(milliseconds: 500),
  transitionBuilder: (Widget child, Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  },
  child: Text(
    '$_count',
    // Key is needed for AnimatedSwitcher to detect changes
    key: ValueKey<int>(_count),
    style: Theme.of(context).textTheme.headlineLarge,
  ),
),

// To update the child with animation:
// setState(() {
//   _count += 1;
// });
''';

import 'package:flutter/material.dart';

class FadeTransitionPreview extends StatefulWidget {
  const FadeTransitionPreview({Key? key}) : super(key: key);

  @override
  State<FadeTransitionPreview> createState() => _FadeTransitionPreviewState();
}

class _FadeTransitionPreviewState extends State<FadeTransitionPreview>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isForward = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start animation automatically
    _controller.forward();
    _isForward = false;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    if (_isForward) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    _isForward = !_isForward;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeTransition(
          opacity: _animation,
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Fade Animation',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleAnimation,
          child: Text(_isForward ? 'Fade In' : 'Fade Out'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ScaleTransitionPreview extends StatefulWidget {
  const ScaleTransitionPreview({Key? key}) : super(key: key);

  @override
  State<ScaleTransitionPreview> createState() => _ScaleTransitionPreviewState();
}

class _ScaleTransitionPreviewState extends State<ScaleTransitionPreview>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: 1.5,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    if (_isExpanded) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    _isExpanded = !_isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScaleTransition(
          scale: _animation,
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.star,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleAnimation,
          child: Text(_isExpanded ? 'Shrink' : 'Expand'),
        ),
      ],
    );
  }
}

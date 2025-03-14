import 'package:flutter/material.dart';

class AnimatedOpacityPreview extends StatefulWidget {
  const AnimatedOpacityPreview({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPreview> createState() => _AnimatedOpacityPreviewState();
}

class _AnimatedOpacityPreviewState extends State<AnimatedOpacityPreview> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity > 0.5 ? 0.2 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Fade Me',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleOpacity,
          child: Text(_opacity > 0.5 ? 'Fade Out' : 'Fade In'),
        ),
      ],
    );
  }
}

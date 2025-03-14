import 'package:flutter/material.dart';

class AnimatedContainerPreview extends StatefulWidget {
  const AnimatedContainerPreview({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPreview> createState() =>
      _AnimatedContainerPreviewState();
}

class _AnimatedContainerPreviewState extends State<AnimatedContainerPreview> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: _expanded ? 200 : 100,
          height: _expanded ? 200 : 100,
          decoration: BoxDecoration(
            color: _expanded ? Colors.purple : Colors.blue,
            borderRadius: BorderRadius.circular(_expanded ? 20 : 50),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              _expanded ? 'Expanded!' : 'Tap me!',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
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

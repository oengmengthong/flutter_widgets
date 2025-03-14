import 'package:flutter/material.dart';

class VisibilityPreview extends StatefulWidget {
  const VisibilityPreview({super.key});

  @override
  State<VisibilityPreview> createState() => _VisibilityPreviewState();
}

class _VisibilityPreviewState extends State<VisibilityPreview> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: _isVisible,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: Container(
            width: 150,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'This content can be hidden',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
          child: Text(_isVisible ? 'Hide Content' : 'Show Content'),
        ),
      ],
    );
  }
}

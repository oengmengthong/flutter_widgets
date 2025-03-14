import 'package:flutter/material.dart';

class PlaceholderPreview extends StatefulWidget {
  const PlaceholderPreview({super.key});

  @override
  State<PlaceholderPreview> createState() => _PlaceholderPreviewState();
}

class _PlaceholderPreviewState extends State<PlaceholderPreview> {
  double _fallbackWidth = 100;
  double _fallbackHeight = 100;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Placeholder(
          fallbackWidth: _fallbackWidth,
          fallbackHeight: _fallbackHeight,
          color: _color,
          strokeWidth: 2.0,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fallbackWidth = 150;
                  _fallbackHeight = 80;
                  _color = Colors.red;
                });
              },
              child: const Text('Change Size & Color'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fallbackWidth = 100;
                  _fallbackHeight = 100;
                  _color = Colors.blue;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ],
    );
  }
}

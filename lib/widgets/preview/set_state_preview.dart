import 'package:flutter/material.dart';
import 'dart:math' as math;

class SetStatePreview extends StatefulWidget {
  const SetStatePreview({super.key});

  @override
  State<SetStatePreview> createState() => _SetStatePreviewState();
}

class _SetStatePreviewState extends State<SetStatePreview> {
  int _counter = 0;
  Color _color = Colors.blue;
  double _width = 100;
  double _height = 100;

  final List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
      _color = _colors[_counter % _colors.length];
      _width = 100 + (_counter * 10) % 100;
      _height = 100 + (_counter * 5) % 100;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _color = Colors.blue;
      _width = 100;
      _height = 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              '$_counter',
              style: TextStyle(
                color: Colors.white,
                fontSize: math.min(_width, _height) / 3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Increment'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: _resetCounter,
              child: const Text('Reset'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'setState() triggers a rebuild of the widget',
          textAlign: TextAlign.center,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}

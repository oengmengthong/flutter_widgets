import 'package:flutter/material.dart';

class RotatedBoxPreview extends StatefulWidget {
  const RotatedBoxPreview({super.key});

  @override
  State<RotatedBoxPreview> createState() => _RotatedBoxPreviewState();
}

class _RotatedBoxPreviewState extends State<RotatedBoxPreview> {
  int _quarterTurns = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: RotatedBox(
              quarterTurns: _quarterTurns,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Rotated Text',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.rotate_left),
              onPressed: () {
                setState(() {
                  _quarterTurns--;
                });
              },
            ),
            Container(
              width: 100,
              alignment: Alignment.center,
              child: Text('Turns: $_quarterTurns'),
            ),
            IconButton(
              icon: const Icon(Icons.rotate_right),
              onPressed: () {
                setState(() {
                  _quarterTurns++;
                });
              },
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _quarterTurns = 0;
            });
          },
          child: const Text('Reset'),
        ),
      ],
    );
  }
}

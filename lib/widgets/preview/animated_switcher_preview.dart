import 'package:flutter/material.dart';

class AnimatedSwitcherPreview extends StatefulWidget {
  const AnimatedSwitcherPreview({super.key});

  @override
  State<AnimatedSwitcherPreview> createState() =>
      _AnimatedSwitcherPreviewState();
}

class _AnimatedSwitcherPreviewState extends State<AnimatedSwitcherPreview> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
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
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count -= 1;
                });
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}

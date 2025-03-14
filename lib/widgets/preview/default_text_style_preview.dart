import 'package:flutter/material.dart';

class DefaultTextStylePreview extends StatelessWidget {
  const DefaultTextStylePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Basic DefaultTextStyle
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          child: Column(
            children: [
              const Text('This text inherits the style'),
              const Text('This text also inherits the style'),
              const SizedBox(height: 8),
              const Text(
                'This text has its own style',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // DefaultTextStyle with different properties
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16,
              color: Colors.blueGrey,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            child: Column(
              children: const [
                Text('This text is center aligned'),
                Text(
                    'This text is limited to 2 lines and will show ellipsis if it overflows. This is a very long text to demonstrate overflow.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class OutlinedButtonPreview extends StatelessWidget {
  const OutlinedButtonPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () {},
          child: const Text('Basic OutlinedButton'),
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.download),
          label: const Text('OutlinedButton with Icon'),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.green,
            side: const BorderSide(color: Colors.green, width: 2),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text('Styled OutlinedButton'),
        ),
      ],
    );
  }
}

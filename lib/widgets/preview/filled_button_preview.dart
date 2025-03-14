import 'package:flutter/material.dart';

class FilledButtonPreview extends StatelessWidget {
  const FilledButtonPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
          onPressed: () {},
          child: const Text('Basic FilledButton'),
        ),
        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.cloud_upload),
          label: const Text('FilledButton with Icon'),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text('Styled FilledButton'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class SemanticsPreview extends StatelessWidget {
  const SemanticsPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Semantics(
        label: 'Profile picture',
        hint: 'Tap to view profile',
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.person, size: 50, color: Colors.white),
        ),
      ),
    );
  }
}

class ExcludeSemanticsPreview extends StatelessWidget {
  const ExcludeSemanticsPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('This text has semantics (accessible by screen readers)'),
          const SizedBox(height: 20),
          ExcludeSemantics(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade200,
              child: const Text(
                'This text is excluded from semantics (not accessible by screen readers)',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

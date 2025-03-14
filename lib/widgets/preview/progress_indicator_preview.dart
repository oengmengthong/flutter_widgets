import 'package:flutter/material.dart';

class CircularProgressIndicatorPreview extends StatelessWidget {
  const CircularProgressIndicatorPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('Loading...'),
        ],
      ),
    );
  }
}

class LinearProgressIndicatorPreview extends StatelessWidget {
  const LinearProgressIndicatorPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Indeterminate progress
        const LinearProgressIndicator(),
        const SizedBox(height: 16),
        // Determinate progress
        LinearProgressIndicator(
          value: 0.7,
          backgroundColor: Colors.grey[300],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ],
    );
  }
}

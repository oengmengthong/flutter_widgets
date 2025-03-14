import 'package:flutter/material.dart';

class MediaQueryOfPreview extends StatefulWidget {
  const MediaQueryOfPreview({super.key});

  @override
  State<MediaQueryOfPreview> createState() => _MediaQueryOfPreviewState();
}

class _MediaQueryOfPreviewState extends State<MediaQueryOfPreview> {
  bool _rotated = false;

  @override
  Widget build(BuildContext context) {
    // Access MediaQuery data using MediaQuery.of()
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final orientation = mediaQuery.orientation;
    final padding = mediaQuery.padding;
    final viewInsets = mediaQuery.viewInsets;
    final devicePixelRatio = mediaQuery.devicePixelRatio;
    final brightness = mediaQuery.platformBrightness;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.blue.shade200),
          ),
          child: Column(
            children: [
              _buildInfoRow('Width', '${screenWidth.toStringAsFixed(0)}px'),
              _buildInfoRow('Height', '${screenHeight.toStringAsFixed(0)}px'),
              _buildInfoRow('Orientation', orientation.name),
              _buildInfoRow(
                  'Device Ratio', devicePixelRatio.toStringAsFixed(2)),
              _buildInfoRow('Brightness', brightness.name),
              _buildInfoRow(
                  'Top Padding', '${padding.top.toStringAsFixed(0)}px'),
              _buildInfoRow(
                  'Bottom Padding', '${padding.bottom.toStringAsFixed(0)}px'),
              _buildInfoRow(
                  'Bottom Insets', '${viewInsets.bottom.toStringAsFixed(0)}px'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _rotated = !_rotated;
            });
          },
          child: Text(_rotated ? 'Reset Orientation' : 'Simulate Rotation'),
        ),
        const SizedBox(height: 10),
        if (_rotated)
          const Text(
            'This simulates how MediaQuery values change when device orientation changes.',
            textAlign: TextAlign.center,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}

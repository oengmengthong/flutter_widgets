import 'package:flutter/material.dart';

class MediaQueryPreview extends StatelessWidget {
  const MediaQueryPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get MediaQuery data
    final mediaQueryData = MediaQuery.of(context);
    final screenSize = mediaQueryData.size;
    final padding = mediaQueryData.padding;
    final orientation = mediaQueryData.orientation;
    final brightness = mediaQueryData.platformBrightness;
    final devicePixelRatio = mediaQueryData.devicePixelRatio;
    final textScaleFactor = mediaQueryData.textScaleFactor;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoRow('Screen Width', '${screenSize.width.toStringAsFixed(1)} px'),
          InfoRow(
              'Screen Height', '${screenSize.height.toStringAsFixed(1)} px'),
          InfoRow('Orientation', orientation.toString().split('.').last),
          InfoRow('Device Pixel Ratio', devicePixelRatio.toStringAsFixed(2)),
          InfoRow('Text Scale Factor', textScaleFactor.toStringAsFixed(2)),
          InfoRow('Platform Brightness', brightness.toString().split('.').last),
          const Divider(),
          const Text('Safe Area Padding:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          InfoRow('Top', '${padding.top.toStringAsFixed(1)} px'),
          InfoRow('Bottom', '${padding.bottom.toStringAsFixed(1)} px'),
          InfoRow('Left', '${padding.left.toStringAsFixed(1)} px'),
          InfoRow('Right', '${padding.right.toStringAsFixed(1)} px'),
          const Divider(),
          const Text('Responsive Container Example:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          // Responsive container example
          Container(
            width: screenSize.width * 0.8,
            height: 100,
            color: Colors.blue.withOpacity(0.3),
            alignment: Alignment.center,
            child: Text(
              'This container is 80% of screen width',
              style: TextStyle(
                fontSize: 14 * textScaleFactor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          // Orientation-specific layout
          Container(
            padding: const EdgeInsets.all(8),
            color: orientation == Orientation.portrait
                ? Colors.green.withOpacity(0.3)
                : Colors.orange.withOpacity(0.3),
            child: Text(
              'This background is ${orientation == Orientation.portrait ? "green" : "orange"} in ${orientation.toString().split('.').last} mode',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const InfoRow(this.title, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(value),
        ],
      ),
    );
  }
}

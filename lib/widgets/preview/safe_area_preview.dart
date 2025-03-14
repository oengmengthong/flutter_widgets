import 'package:flutter/material.dart';

class SafeAreaPreview extends StatefulWidget {
  const SafeAreaPreview({super.key});

  @override
  State<SafeAreaPreview> createState() => _SafeAreaPreviewState();
}

class _SafeAreaPreviewState extends State<SafeAreaPreview> {
  bool _useSafeArea = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ColoredBox(
            color: Colors.grey.shade200,
            child: _useSafeArea
                ? SafeArea(
                    minimum: const EdgeInsets.all(16.0),
                    child: _buildContent(),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildContent(),
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('SafeArea:'),
              Switch(
                value: _useSafeArea,
                onChanged: (bool value) {
                  setState(() {
                    _useSafeArea = value;
                  });
                },
              ),
              Text(_useSafeArea ? 'On' : 'Off'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Container(
            color: Colors.blue.shade100,
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Top Edge',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'SafeArea prevents content from being\nobscured by notches, status bars,\nand other system UI elements',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            color: Colors.blue.shade100,
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Bottom Edge',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

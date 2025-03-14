import 'package:flutter/material.dart';

class BuilderPreview extends StatelessWidget {
  const BuilderPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Builder(
              builder: (BuildContext context) {
                // Access to the nearest MediaQuery in the widget tree
                final mediaQuery = MediaQuery.of(context);
                final screenWidth = mediaQuery.size.width;
                final screenHeight = mediaQuery.size.height;
                final brightness = mediaQuery.platformBrightness;

                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Screen: ${screenWidth.toInt()}×${screenHeight.toInt()}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Mode: ${brightness == Brightness.dark ? "Dark" : "Light"}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Ratio: ${(screenWidth / screenHeight).toStringAsFixed(2)}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Builder allows access to context at any point in the widget tree',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

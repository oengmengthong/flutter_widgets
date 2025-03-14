import 'package:flutter/material.dart';

class AspectRatioPreview extends StatelessWidget {
  const AspectRatioPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[200],
        width: 300,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              color: Colors.blue[100],
              width: double.infinity,
              child: const AspectRatio(
                aspectRatio: 16 / 9, // Widescreen 16:9 ratio
                child: Card(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      '16:9 Aspect Ratio',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.green[100],
              width: double.infinity,
              child: const AspectRatio(
                aspectRatio: 1 / 1, // Square 1:1 ratio
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      '1:1 Aspect Ratio',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SpacerPreview extends StatelessWidget {
  const SpacerPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.blue[100],
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  const Spacer(flex: 1), // Space with flex 1
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                  const Spacer(flex: 2), // Space with flex 2 (twice as much)
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.green[100],
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    color: Colors.purple,
                    width: double.infinity,
                  ),
                  const Spacer(flex: 1), // Space with flex 1
                  Container(
                    height: 30,
                    color: Colors.orange,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text('Spacer creates flexible empty space'),
          ],
        ),
      ),
    );
  }
}
